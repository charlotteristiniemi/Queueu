//
//  UIColor+CustomColorCatagory.swift
//  Queueu
//
//  Created by Charlotte Ristiniemi on 2018-10-17.
//  Copyright © 2018 Charlotte Ristiniemi. All rights reserved.
//

import UIKit

extension UIColor {
  
  struct Primary {
    static let Regular = UIColor(red:0.19, green:0.20, blue:0.27, alpha:1.0)
    static let Dark = UIColor(red:0.11, green:0.11, blue:0.18, alpha:1.0)
    static let OpacityDark = UIColor(red:0.11, green:0.11, blue:0.18, alpha:0.2)
    static let Light = UIColor(red:0.38, green:0.39, blue:0.47, alpha:1.0)
  }
  
  struct Accent {
    static let Regular = UIColor(red:0.95, green:0.38, blue:0.51, alpha:1.0)
    static let Dark = UIColor(red:0.85, green:0.33, blue:0.46, alpha:1.0)
  }
  
  struct Greys {
    static let Light = UIColor(red:0.97, green:0.97, blue:0.97, alpha:0.95)
    static let OpacityLight = UIColor(red:0.97, green:0.97, blue:0.97, alpha:0.2)
    static let Dark = UIColor(red:0.26, green:0.26, blue:0.26, alpha:1.0)
  }
}
