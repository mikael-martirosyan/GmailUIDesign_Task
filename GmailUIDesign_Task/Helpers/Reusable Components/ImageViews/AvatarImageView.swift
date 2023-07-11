//
//  AvatarImageView.swift
//  GmailUIDesign_Task
//
//  Created by Микаэл Мартиросян on 11.07.2023.
//

import UIKit

class AvatarImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init() {
        self.init(frame: .zero)
        
        backgroundColor = UIColor.ProjectColors.red
        clipsToBounds = true
        contentMode = .scaleAspectFit
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = frame.width / 2
    }
}
