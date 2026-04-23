//
//  NoteRowView.swift
//  Detox
//
//  Created by Владимир Пудовкин on 17.04.2024.
//

import SwiftUI

struct NoteRowView: View {
    let note: MyNote // Изменяем тип на MyNote
    @State var flag = false
    
    var body: some View {
        HStack {
            Image(systemName: "square.and.arrow.up")
                .font(.title3)
                .foregroundColor(.blue)
                .symbolEffect(.variableColor, isActive: flag == false)
                .symbolEffect(.scale.up)
            VStack(alignment: .leading, spacing: 5) {
                Text(note.title)
                    .fontWeight(.semibold)
                Text(note.date.formatted()) // Теперь свойство date доступно
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
            }
        }
    }
}

struct NoteRow_Preview: PreviewProvider {
    static var previews: some View {
        NoteRowView(note: MyNote.example) // Используем MyNote.example
    }
}
