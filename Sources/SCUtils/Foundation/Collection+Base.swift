//
//  Collection+Base.swift
//  
//
//  Created by kim sunchul on 2022/05/30.
//

import Foundation

public extension Collection {

  var isNotEmpty: Bool {
    return !self.isEmpty
  }

  subscript(safe index: Index) -> Element? {
    return self.indices.contains(index) ? self[index] : nil
  }

  func group(by size: Int) -> [[Element]]? {
    guard size > 0, !self.isEmpty else { return nil }
    var start: Self.Index = self.startIndex
    var slices: [[Element]] = [[]]
    while start != self.endIndex {
      let end = self.index(start, offsetBy: size, limitedBy: self.endIndex) ?? self.endIndex
      slices.append(Array(self[start..<end]))
      start = end
    }
    return slices
  }

}
