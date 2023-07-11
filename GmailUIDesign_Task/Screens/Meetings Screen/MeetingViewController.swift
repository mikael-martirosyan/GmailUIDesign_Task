//
//  MeetingViewController.swift
//  GmailUIDesign_Task
//
//  Created by Микаэл Мартиросян on 10.07.2023.
//

import UIKit

class MeetingViewController: UIViewController {
    
    let newMeetingButton = WideButton(type: .filled, title: "New meeting")
    let joinToMeeting = WideButton(type: .default, title: "Join to meeting")
    
    let pageView = UIPageViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupSubviews()
        setupConstraints()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
    }
    
    private func setupSubviews() {
        view.addSubview(newMeetingButton)
        view.addSubview(joinToMeeting)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            newMeetingButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            newMeetingButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            newMeetingButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            newMeetingButton.heightAnchor.constraint(equalToConstant: 40),
            
            joinToMeeting.topAnchor.constraint(equalTo: newMeetingButton.bottomAnchor, constant: 15),
            joinToMeeting.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            joinToMeeting.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            joinToMeeting.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
