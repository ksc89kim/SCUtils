//
//  File.swift
//  
//
//  Created by kim sunchul on 2022/05/26.
//

import Foundation

public extension StringProtocol where Index == String.Index {

  func nsRange(string: String) -> NSRange? {
    if let range = self.range(of: string) {
      return .init(range, in: self)
    }
    return nil
  }

  func nsRange() -> NSRange {
    return self.nsRange(string: self as! String) ?? .init()
  }

}
