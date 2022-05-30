//
//  UIEdgeInsets+Base.swift
//  
//
//  Created by kim sunchul on 2022/05/30.
//

#if canImport(UIKit)

import UIKit

public extension UIEdgeInsets {

  init(inset: CGFloat) {
    self.init(top: inset, left: inset, bottom: inset, right: inset)
  }

  init(horizontal: CGFloat, vertical: CGFloat) {
    self.init(top: vertical / 2, left: horizontal / 2, bottom: vertical / 2, right: horizontal / 2)
  }

  init(horizontal: CGFloat) {
    self.init(top: .zero, left: horizontal / 2, bottom: .zero, right: horizontal / 2)
  }

  init(vertical: CGFloat) {
    self.init(top: vertical / 2, left: .zero, bottom: vertical / 2, right: .zero)
  }
  
  var horizontal: CGFloat {
    return self.left + self.right
  }

  var vertical: CGFloat {
    return self.top + self.bottom
  }

}

#endif

