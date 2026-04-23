//
//  FeaturesPage.swift
//  Detox
//
//  Created by Владимир Пудовкин on 29.05.2024.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Обновление")
                .font(.title)
                .fontWeight(.semibold)
                .padding()
            FeatureCard(icon: "paragraph", description: "Здесь обязательно будет какая-то крутая функция, но пока что пусто")
                .fontWeight(.regular)
            FeatureCard(icon: "cube.box", description: "Встроенный AI поможет вам выполнить любые повседневные задачи")
                .fontWeight(.regular)
        }
    }
}

#Preview {
    FeaturesPage()
}
