//
//  LetterLabel.swift
//  GmailUIDesign_Task
//
//  Created by Микаэл Мартиросян on 11.07.2023.
//

import UIKit

class LetterLabel: UILabel {
    
    enum LabelType {
        case date
        case message
        case sender
        case title
        
        enum Size: CGFloat {
            case date = 11.0
            case message = 13.0
            case sender = 16.0
            case title = 14.0
        }
    }
    
//    enum LetterState {
//        case read
//        case unread
//    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(/*hasBeenReaded: Bool,*/ type: LabelType) {
        self.init(frame: .zero)
        
        setupLabel(/*hasBeenReaded: hasBeenReaded,*/ type: type)
    }
    
    func setupLabel(/*hasBeenReaded: Bool,*/ type: LabelType) {
        switch type {
        case .date:
            //hasBeenReaded ? setupReadLetter(size: .sender) :
            setupUnreadLetter(size: .date)
        case .message:
            setupReadLetter(size: .message)
        case .sender:
            //hasBeenReaded ? setupReadLetter(size: .sender) :
            setupUnreadLetter(size: .sender)
        case .title:
            //hasBeenReaded ? setupReadLetter(size: .title) :
            setupUnreadLetter(size: .title)
        }
        
        numberOfLines = 1
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupReadLetter(size: LabelType.Size) {
        font = UIFont(name: UIFont.CustomFont.regular.rawValue, size: size.rawValue)
        textColor = UIColor.Ink.gray
    }
    
    private func setupUnreadLetter(size: LabelType.Size) {
        font = UIFont(name: UIFont.CustomFont.bold.rawValue, size: size.rawValue)
        textColor = UIColor.Ink.black
    }
}
