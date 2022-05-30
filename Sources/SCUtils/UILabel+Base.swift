//
//  UILabel+Base.swift
//  
//
//  Created by kim sunchul on 2022/05/30.
//

#if canImport(UIKit)

import UIKit

public extension UILabel {
  var maxLines: Int {
    return self.maxLines(width: self.frame.width)
  }

  func maxLines(width: CGFloat) -> Int {
    guard let font = self.font else { return 0 }

    let maxSize: CGSize = .init(width: width, height: CGFloat(Float.infinity))
    let charSize = self.font.lineHeight
    let text = (self.text ?? "") as NSString
    let textSize = text.boundingRect(
      with: maxSize,
      options: .usesLineFragmentOrigin,
      attributes: [NSAttributedString.Key.font: font],
      context: nil
    )
    return .init(ceil(textSize.height/charSize))
  }
}

#endif
