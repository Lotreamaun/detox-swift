//
//  MyNote.swift
//  Detox
//
//  Created by Владимир Пудовкин on 17.04.2024.
//

import Foundation

struct MyNote: Identifiable {
    let id = UUID()
    var title: String
    var mainText: NSMutableAttributedString
    var date: Date
}

extension MyNote {
    static let example = MyNote(
        title: "Пример заметки",
        mainText: NSMutableAttributedString(string: "Это пример текста заметки."),
        date: Date()
    )
}