//
//  Optional+Base.swift
//  
//
//  Created by kim sunchul on 2022/05/30.
//

import Foundation

public extension Optional where Wrapped: Collection {

  var isNilOrEmpty: Bool {
    guard let collection = self else { return true }
    return collection.isEmpty
  }

  var nonEmpty: Wrapped? {
    guard let collection = self else { return nil }
    guard !collection.isEmpty else { return nil }
    return collection
  }

}
