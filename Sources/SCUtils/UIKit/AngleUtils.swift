//
//  AngleUtils.swift
//  
//
//  Created by seonchul.kim on 2022/05/27.
//

#if canImport(UIKit)

import UIKit

public extension BinaryInteger {

  var degreesToRadians: CGFloat { CGFloat(self) * .pi / 180 }

}


public extension FloatingPoint {

  var degreesToRadians: Self { self * .pi / 180 }

  var radiansToDegrees: Self { self * 180 / .pi }
}

#endif
