//
//  Charater+Base.swift
//  
//
//  Created by seonchul.kim on 2022/05/27.
//

import Foundation

public extension Character {

  var isEmoji: Bool {
    let scalarValue: UInt32 = String(self).unicodeScalars.first!.value
    switch scalarValue {
    case 0x1F600...0x1F64F,
      0x1F300...0x1F5FF,
      0x1F680...0x1F6FF,
      0x1F1E6...0x1F1FF,
      0x2600...0x26FF,
      0x2700...0x27BF,
      0xE0020...0xE007F,
      0xFE00...0xFE0F,
      0x1F900...0x1F9FF,
      127_000...127_600,
      65024...65039,
      9100...9300,
      8400...8447:
      return true
    default:
      return false
    }
  }

  var string: String {
      return String(self)
  }

  var lowercased: Character {
      return String(self).lowercased().first!
  }

  var uppercased: Character {
      return String(self).uppercased().first!
  }

  static func * (lhs: Int, rhs: Character) -> String {
      guard lhs > 0 else { return "" }
      return String(repeating: String(rhs), count: lhs)
  }

  static func * (lhs: Character, rhs: Int) -> String {
      guard rhs > 0 else { return "" }
      return String(repeating: String(lhs), count: rhs)
  }
  
}
