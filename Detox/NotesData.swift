//
//  NotesData.swift
//  Detox
//
//  Created by Владимир Пудовкин on 17.04.2024.
//

import SwiftUI

class NotesData: ObservableObject {
    @Published var notes: [MyNote] = [
        MyNote(
            title: "Новая заметка",
            mainText: NSMutableAttributedString(string: ""),
            date: Date()
        )
    ]
    
    // Добавление новой заметки
    func add(_ note: MyNote) {
        notes.append(note)
    }
    
    // Удаление заметки
    func remove(_ note: MyNote) {
        if let index = notes.firstIndex(where: { $0.id == note.id }) {
            notes.remove(at: index)
        }
    }
}
