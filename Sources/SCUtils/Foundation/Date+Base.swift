//
//  Date+Base.swift
//  
//
//  Created by kim sunchul on 2022/05/26.
//

import Foundation

public extension Date {

  init(from string: String, format: String, locale: Locale = .current) {
    let dateFormatter: DateFormatter = .init()
    dateFormatter.dateFormat = format
    dateFormatter.calendar = Calendar(identifier: .gregorian)
    dateFormatter.locale = locale

    guard let date = dateFormatter.date(from: string) else {
      self = .init()
      return
    }
    self = date
  }

  var year: Int {
    return Calendar.current.component(.year, from: self)
  }

  var month: Int {
    return Calendar.current.component(.month, from: self)
  }

  var day: Int {
    return Calendar.current.component(.day, from: self)
  }

  var hour: Int {
    return Calendar.current.component(.hour, from: self)
  }

  var second: Int {
    return Calendar.current.component(.second, from: self)
  }

  var isToday: Bool {
    return Calendar.current.isDateInToday(self)
  }

  var isYesterDay: Bool {
    return Calendar.current.isDateInYesterday(self)
  }

  func isGreaterThanDate(_ date: Date) -> Bool {
    return self.compare(date) == ComparisonResult.orderedDescending
  }

  func isLessThanDate(_ date: Date) -> Bool {
    return self.compare(date) == ComparisonResult.orderedAscending
  }

  func isEqualToDate(date: Date) -> Bool {
    return self.compare(date) == ComparisonResult.orderedSame
  }

  func formattedString(format: String, locale: Locale = .current) -> String {
    let dateFormatter: DateFormatter = .init()
    dateFormatter.dateFormat = format
    dateFormatter.calendar = .init(identifier: .gregorian)
    dateFormatter.locale = locale
    return dateFormatter.string(from: self)
  }

  func difference(endDate: Date) -> DateComponents {
    return Calendar.current.dateComponents(
      [.year,.month,.day,.hour, .second],
      from: self,
      to: endDate
    )
  }

}
