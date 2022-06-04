//
//  File.swift
//  
//
//  Created by kim sunchul on 2022/05/30.
//

#if canImport(UIKit)

import UIKit

public extension UIScrollView {

  var snapshot: UIImage? {
    UIGraphicsBeginImageContextWithOptions(self.contentSize, false, 0)
    defer {
      UIGraphicsEndImageContext()
    }
    guard let context: CGContext = UIGraphicsGetCurrentContext() else { return nil }
    let previousFrame: CGRect = self.frame
    self.frame = .init(origin: self.frame.origin, size: self.contentSize)
    self.layer.render(in: context)
    self.frame = previousFrame
    return UIGraphicsGetImageFromCurrentImageContext()
  }

  var visibleRect: CGRect {
    let contentWidth: CGFloat = self.contentSize.width - self.contentOffset.x
    let contentHeight: CGFloat = self.contentSize.height - self.contentOffset.y
    return .init(
      origin: self.contentOffset,
      size: .init(
        width: min(min(self.bounds.size.width, self.contentSize.width), contentWidth),
        height: min(min(self.bounds.size.height, self.contentSize.height), contentHeight)
      )
    )
  }

  func scrollToTop(animated: Bool = true) {
    self.setContentOffset(
      .init(x: self.contentOffset.x, y: -self.contentInset.top),
      animated: animated
    )
  }

  func scrollToLeft(animated: Bool = true) {
    self.setContentOffset(
      .init(x: -self.contentInset.left, y: self.contentOffset.y),
      animated: animated
    )
  }

  func scrollToBottom(animated: Bool = true) {
    self.setContentOffset(
      .init(
        x: self.contentOffset.x,
        y: max(0, self.contentSize.height - self.bounds.height) + self.contentInset.bottom
      ),
      animated: animated
    )
  }

  func scrollToRight(animated: Bool = true) {
    self.setContentOffset(
      .init(
        x: max(0, self.contentSize.width - self.bounds.width) + self.contentInset.right,
        y: self.contentOffset.y
      ),
      animated: animated
    )
  }

}

#endif
