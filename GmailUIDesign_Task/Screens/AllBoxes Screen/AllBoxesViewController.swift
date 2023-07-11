//
//  AllBoxesViewController.swift
//  GmailUIDesign_Task
//
//  Created by Микаэл Мартиросян on 10.07.2023.
//

import UIKit

class AllBoxesViewController: UIViewController {
    
    private let tableView = UITableView()
    private let writeLetter = UIButton()
    
    private let data: [LetterCellModel] = loadData("mockData.json")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupConfiguration()
        setupUI()
    }
    
    private func setupConfiguration() {
        tableView.registerCell(LettersCell.self)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    private func setupUI() {
        view = tableView
        
        tableView.backgroundColor = .systemBackground
        tableView.separatorStyle = .none
        
        tableView.addSubview(writeLetter)
    }

//    private func setupConstraints() {
//        NSLayoutConstraint.activate([
//            writeLetter.bottomAnchor.constraint(equalTo: tableView.bottomAnchor, constant: -10),
//            writeLetter.trailingAnchor.constraint(equalTo: tableView.trailingAnchor, constant: -10),
//            writeLetter.heightAnchor.constraint(equalToConstant: <#T##CGFloat#>)
//        ])
//    }

}

extension AllBoxesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as LettersCell
        
        cell.avatarImageView.image = UIImage(systemName: "person")
                                    //data[indexPath.row].image
        cell.senderLabel.text = data[indexPath.row].sender
        cell.titleLabel.text = data[indexPath.row].title
        cell.messageLabel.text = data[indexPath.row].message
        cell.dateLabel.text = data[indexPath.row].date
//        cell.letterHasBeenReaded = data[indexPath.row].hasBeenReaded
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "All boxes"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
