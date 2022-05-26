//
//  File.swift
//  
//
//  Created by kim sunchul on 2022/05/26.
//

import Foundation

public extension String {

  var localized: String {
    return NSLocalizedString(self, comment:"")
  }

  var trimmed: String {
    return self.trimmingCharacters(in: .whitespacesAndNewlines)
  }

  var isValidEmail: Bool {
    let emailRegex: String = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let predicate: NSPredicate = .init(format: "SELF MATCHES %@", emailRegex)
    return predicate.evaluate(with: self)
  }

  var isNumber: Bool {
    return CharacterSet(charactersIn: "0123456789")
      .isSuperset(of: CharacterSet(charactersIn: self)) && !self.isEmpty
  }

  var isPhoneNumber: Bool {
    let charcter: CharacterSet  = .init(charactersIn: "+0123456789").inverted
    let inputString: NSArray = self.components(separatedBy: charcter) as NSArray
    let filtered = inputString.componentsJoined(by: "") as String
    return  self == filtered
  }

  var isAlphanumeric: Bool {
    return !self.isEmpty && self.range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil
  }

  subscript(_ range: NSRange) -> String {
    let startIndex: Index = self.index(self.startIndex, offsetBy: range.location)
    let endIndex: Index = self.index(startIndex, offsetBy: range.length)
    return String(self[startIndex..<endIndex])
  }

  subscript(_ range: CountableClosedRange<Int>) -> String {
    let startIndex: Index = self.index(self.startIndex, offsetBy: range.lowerBound)
    let endIndex: Index = self.index(startIndex, offsetBy: range.upperBound - range.lowerBound)
    return String(self[startIndex...endIndex])
  }

  func replace(target: String, withString: String) -> String {
    return self.replacingOccurrences(
      of: target, with: withString,
      options: NSString.CompareOptions.literal,
      range: nil
    )
  }
  
}
