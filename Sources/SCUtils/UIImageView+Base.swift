//
//  UIImageView+Base.swift
//  
//
//  Created by kim sunchul on 2022/05/30.
//

#if canImport(UIKit)

import UIKit

public extension UIImageView {

  func cropImage() {
    let frame: CGRect = .init(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)

    let imageView: UIImageView = UIImageView(frame: frame)
    imageView.backgroundColor = UIColor.clear
    imageView.contentMode = .scaleAspectFill
    imageView.image = self.image
    imageView.layer.masksToBounds = true
    imageView.layer.cornerRadius = self.layer.cornerRadius

    UIGraphicsBeginImageContext(frame.size)
    imageView.layer.render(in: UIGraphicsGetCurrentContext()!)
    let cropImage: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()

    self.image = cropImage
  }

}

#endif
