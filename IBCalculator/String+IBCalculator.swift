//
//  String+IBCalculator.swift
//  IBCalculator
//
import Foundation
import UIKit

extension String {
  /// Draw the `String` inside the bounding rectangle with a given alignment.
  func drawAtPointInRect(_ rect: CGRect, withAttributes attributes: [String: AnyObject]?, andAlignment alignment: NCStringAlignment) {
    let size = self.size(attributes: attributes)
    var x, y: CGFloat
    
    switch alignment {
    case .leftTop, .leftCenter, .leftBottom:
      x = rect.minX
    case .centerTop, .center, .centerBottom:
      x = rect.midX - size.width / 2
    case .rightTop, .rightCenter, .rightBottom:
      x = rect.maxX - size.width
    }
    
    switch alignment {
    case .leftTop, .centerTop, .rightTop:
      y = rect.minY
    case .leftCenter, .center, .rightCenter:
      y = rect.midY - size.height / 2
    case .leftBottom, .centerBottom, .rightBottom:
      y = rect.maxY - size.height
    }
    
    self.draw(at: CGPoint(x: x, y: y), withAttributes: attributes)
  }
}
