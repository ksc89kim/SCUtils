//
//  File.swift
//  
//
//  Created by kim sunchul on 2022/05/26.
//

import UIKit

public extension String {

  func height(with width: CGFloat, font: UIFont, limitedBy lineOfNumber: Int = .max) -> CGFloat {
    let height: CGFloat = font.lineHeight * CGFloat(lineOfNumber)
    let constraintRect: CGSize = .init(width: width, height: height)
    let boundingBox: CGRect = self.boundingRect(
      with: constraintRect,
      options: .usesLineFragmentOrigin,
      attributes: [.font: font],
      context: nil
    )

    return ceil(boundingBox.height)
  }

  func width(with height: CGFloat, font: UIFont) -> CGFloat {
    let constraintRect: CGSize = .init(width: .greatestFiniteMagnitude, height: height)
    let boundingBox: CGRect = self.boundingRect(
      with: constraintRect,
      options: .usesLineFragmentOrigin,
      attributes: [.font: font],
      context: nil
    )

    return ceil(boundingBox.width)
  }
  
}
