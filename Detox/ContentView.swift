//
//  ContentView.swift
//  Detox
//
//  Created by Владимир Пудовкин on 27.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ContentView()
}
