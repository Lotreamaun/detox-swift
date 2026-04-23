//
//  NoteRow.swift
//  Detox
//
//  Created by Владимир Пудовкин on 15.04.2024.
//

import SwiftUI

struct NoteRow: Identifiable {
    var id = UUID()
    
    @Binding var attributedText: NSAttributedString
    
    var title = "Делаем вещи"
    var text = [TextView]()
    var date = Date.now
    
    static var example = NoteRow(attributedText: .constant(NSAttributedString(string: "")))
}

extension Date {
    func formatting() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.mm.yyyy"
        return formatter.string(from: self)
    }
}
