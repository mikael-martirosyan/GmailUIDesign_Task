//
//  WideButton.swift
//  GmailUIDesign_Task
//
//  Created by Микаэл Мартиросян on 11.07.2023.
//

import UIKit

class WideButton: UIButton {
    
    enum ButtonType {
        case `default`
        case filled
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(type: ButtonType, title: String) {
        self.init(frame: .zero)
        
        switch type {
        case .`default`:
            setupDefaultButton(title: title)
        case .filled:
            setupFilledButton(title: title)
        }
        
//        let left = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
//        contentEdgeInsets
        contentHorizontalAlignment = .left
        titleLabel?.font = UIFont(name: UIFont.CustomFont.regular.rawValue, size: 14.0)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = frame.height / 2.0
    }
    
    private func setupDefaultButton(title: String) {
        backgroundColor = .white
        setTitle(title, for: .normal)
        setTitleColor(UIColor.UI.blue, for: .normal)
        layer.borderColor = UIColor.Grays.gray.cgColor
        layer.borderWidth = 0.5
    }
    
    private func setupFilledButton(title: String) {
        backgroundColor = UIColor.UI.blue
        setTitle(title, for: .normal)
        setTitleColor(.white, for: .normal)
    }
}
