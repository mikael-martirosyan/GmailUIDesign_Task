//
//  Reusable + Extension.swift
//  GmailUIDesign_Task
//
//  Created by Микаэл Мартиросян on 11.07.2023.
//

import UIKit

extension Reusable where Self: UIView {
    static var reuseID: String {
        return String(describing: self)
    }
}
