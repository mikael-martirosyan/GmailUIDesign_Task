//
//  UIColor + Extension.swift
//  GmailUIDesign_Task
//
//  Created by Микаэл Мартиросян on 11.07.2023.
//

import UIKit

extension UIColor {
    
    enum ProjectColors {
        static var blue = UIColor.createColor(red: 28.0, green: 88.0, blue: 222.0, alpha: 1.0)
        static var red = UIColor.createColor(red: 202.0, green: 30.0, blue: 38.0, alpha: 1.0)
        static var white = UIColor.createColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 1.0)
        static var black = UIColor.createColor(red: 1.0, green: 0.0, blue: 2.0, alpha: 1.0)
    }
    
    enum Grays {
        static var gray = UIColor.createColor(red: 38.0, green: 37.0, blue: 41.0, alpha: 1.0)
        static var gray1 = UIColor.createColor(red: 143.0, green: 139.0, blue: 144.0, alpha: 1.0)
        static var gray2 = UIColor.createColor(red: 212.0, green: 210.0, blue: 217.0, alpha: 1.0)
        static var gray3 = UIColor.createColor(red: 241.0, green: 240.0, blue: 244.0, alpha: 1.0)
        static var gray4 = UIColor.createColor(red: 247.0, green: 243.0, blue: 249.0, alpha: 1.0)
    }
    
    enum Ink {
        static var black = UIColor.createColor(red: 24.0, green: 23.0, blue: 27.0, alpha: 1.0)
        static var gray = UIColor.createColor(red: 83.0, green: 82.0, blue: 87.0, alpha: 1.0)
        static var lightGray = UIColor.createColor(red: 184.0, green: 181.0, blue: 188.0, alpha: 1.0)
    }
    
    enum UI {
        static var red = UIColor.createColor(red: 192.0, green: 2.0, blue: 34.0, alpha: 1.0)
        static var green = UIColor.createColor(red: 55.0, green: 233.0, blue: 94.0, alpha: 1.0)
        static var yellow = UIColor.createColor(red: 252.0, green: 231.0, blue: 83.0, alpha: 1.0)
        static var blue = UIColor.createColor(red: 30.0, green: 86.0, blue: 214.0, alpha: 1.0)
    }
    
    static func createColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
    
    static func randomColor() -> UIColor {
        return UIColor(red: .random(),
                       green: .random(),
                       blue: .random(),
                       alpha: 1.0)
    }
}
