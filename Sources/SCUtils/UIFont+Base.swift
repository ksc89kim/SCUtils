//
//  UIFont+Base.swift
//  
//
//  Created by kim sunchul on 2022/05/30.
//

#if canImport(UIKit)

import UIKit

public extension UIFont {

  struct System {
    func ultraLight(_ size: CGFloat) -> UIFont {
      return .systemFont(ofSize: size, weight: .ultraLight)
    }

    func thin(_ size: CGFloat) -> UIFont {
      return .systemFont(ofSize: size, weight: .thin)
    }

    func light(_ size: CGFloat) -> UIFont {
      return .systemFont(ofSize: size, weight: .light)
    }

    func regular(_ size: CGFloat) -> UIFont {
      return .systemFont(ofSize: size, weight: .regular)
    }

    func medium(_ size: CGFloat) -> UIFont {
      return .systemFont(ofSize: size, weight: .medium)
    }

    func semibold(_ size: CGFloat) -> UIFont {
      return .systemFont(ofSize: size, weight: .semibold)
    }

    func bold(_ size: CGFloat) -> UIFont {
      return .systemFont(ofSize: size, weight: .bold)
    }

    func heavy(_ size: CGFloat) -> UIFont {
      return .systemFont(ofSize: size, weight: .heavy)
    }

    func black(_ size: CGFloat) -> UIFont {
      return .systemFont(ofSize: size, weight: .black)
    }

    func weight(_ weight: UIFont.Weight, size: CGFloat) -> UIFont {
      return .systemFont(ofSize: size, weight: weight)
    }
  }

  static let system = System()

}

#endif

