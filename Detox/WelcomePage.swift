//
//  WelcomePage.swift
//  Detox
//
//  Created by Владимир Пудовкин on 27.05.2024.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundColor(.blue)
                Image(systemName: "person.and.background.dotted")
                    .font(.system(size: 80))
                    .foregroundColor(.white)
            }
            Text("Detox")
                .font(.title)
                .fontWeight(.semibold)
            Text("Дивный новый мир")
        }
        .padding(.bottom)
    }
}

#Preview {
    WelcomePage()
}
