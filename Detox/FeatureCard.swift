//
//  FeatureCard.swift
//  Detox
//
//  Created by Владимир Пудовкин on 29.05.2024.
//

import SwiftUI

struct FeatureCard: View {
    let icon: String
    let description: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.largeTitle)
                .frame(width: 50)
                .padding(.trailing, 10)
            Text(description)
            Spacer()
        }
        .padding()
        .foregroundColor(.white)
        .background(.blue, in: RoundedRectangle(cornerRadius: 12))
        .padding([.leading, .trailing], 15)
    }
}

#Preview {
    FeatureCard(icon: "paragraph", description: "Здесь обязательно будет какая-то крутая функция, но пока что пусто")
}
