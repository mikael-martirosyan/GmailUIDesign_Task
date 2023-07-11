//
//  LetterCellModel.swift
//  GmailUIDesign_Task
//
//  Created by Микаэл Мартиросян on 10.07.2023.
//

import Foundation

struct LetterCellModel: Decodable {
    var sender: String
    var title: String
    var message: String
    var image: String
    var date: String
    var isMarked: Bool
    var isImportant: Bool
//    var hasBeenReaded: Bool
}
