//
//  TextView.swift
//  Detox
//
//  Created by Владимир Пудовкин on 01.04.2024.
//

import SwiftUI

struct TextView: UIViewRepresentable, Identifiable {
    var id = UUID()
    
    @Binding var attributedText: NSMutableAttributedString
    @State var allowsEditingTextAttributes: Bool = false
    @State var font: UIFont?
    
    func makeUIView(context: Context) -> UITextView {
        UITextView()
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = attributedText
        uiView.allowsEditingTextAttributes = allowsEditingTextAttributes
        uiView.font = font
    }
}
