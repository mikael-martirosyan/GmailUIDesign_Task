//
//  CGFloat + Extension.swift
//  GmailUIDesign_Task
//
//  Created by Микаэл Мартиросян on 11.07.2023.
//

import Foundation

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
