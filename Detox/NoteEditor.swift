//
//  NoteEditor.swift
//  Detox
//
//  Created by Владимир Пудовкин on 27.03.2024.
//

import SwiftUI

struct NoteEditor: View {
    
    @Binding var note: MyNote
    
    var body: some View {
        HStack {
            Button(action: { } ) {
                Image(systemName: "paperplane.fill")
            }
            .font(.title2)
            .padding([.trailing, .bottom])
//            .border(Color.blue)
        }
        .frame(maxWidth: .infinity, alignment: .topTrailing)
        .padding(.trailing)
        VStack {
            TextField("Text here...", text: $note.title, axis: .vertical)
                .lineLimit(1...5)
                .padding()
                .font(.title)
                .bold()
            TextView(attributedText: $note.mainText, allowsEditingTextAttributes: true, font: .systemFont(ofSize: 17))
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .border(Color.red)
    }
}

//#Preview {
//    NoteEditor(note: Note)
//}
