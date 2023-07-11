//
//  LettersCell.swift
//  GmailUIDesign_Task
//
//  Created by Микаэл Мартиросян on 10.07.2023.
//

import UIKit

class LettersCell: UITableViewCell {

//    lazy var letterHasBeenReaded = false
    
    let avatarImageView = AvatarImageView()
    
    let senderLabel = LetterLabel(/*hasBeenReaded: letterHasBeenReaded,*/ type: .sender)
    let titleLabel = LetterLabel(/*hasBeenReaded: letterHasBeenReaded,*/ type: .title)
    let messageLabel = LetterLabel(/*hasBeenReaded: letterHasBeenReaded,*/ type: .message)
    let dateLabel = LetterLabel(/*hasBeenReaded: letterHasBeenReaded,*/ type: .date)
    let isMarkedButton: UIButton = {
        let button = UIButton()
        button.tintColor = .systemYellow
        button.setImage(UIImage(systemName: "star"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    /*
     let isImportantButton
     */
    
    var isMarkedState = true
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupConfiguration()
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func isMarkedToggle() {
        if isMarkedState {
            isMarkedButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
            isMarkedState = !isMarkedState
        } else {
            isMarkedButton.setImage(UIImage(systemName: "star"), for: .normal)
            isMarkedState = !isMarkedState
        }
    }
    
    private func setupConfiguration() {
        isMarkedButton.addTarget(self, action: #selector(isMarkedToggle), for: .touchUpInside)
    }
    
    private func setupContraints() {
        contentView.addSubview(avatarImageView)
        contentView.addSubview(senderLabel)
        contentView.addSubview(titleLabel)
        contentView.addSubview(messageLabel)
        contentView.addSubview(dateLabel)
        contentView.addSubview(isMarkedButton)

        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            avatarImageView.heightAnchor.constraint(equalToConstant: 50),
            avatarImageView.widthAnchor.constraint(equalToConstant: 50),
            
            senderLabel.topAnchor.constraint(equalTo: avatarImageView.topAnchor),
            senderLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 10),
            senderLabel.trailingAnchor.constraint(equalTo: dateLabel.leadingAnchor, constant: -10),
            
            dateLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            dateLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            titleLabel.topAnchor.constraint(equalTo: senderLabel.bottomAnchor, constant: 3),
            titleLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 3),
            messageLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 10),
            messageLabel.trailingAnchor.constraint(equalTo: isMarkedButton.leadingAnchor, constant: -10),
            
            isMarkedButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 3),
            isMarkedButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            isMarkedButton.heightAnchor.constraint(equalToConstant: 20),
            isMarkedButton.widthAnchor.constraint(equalToConstant: 20)
        ])
    }
}
