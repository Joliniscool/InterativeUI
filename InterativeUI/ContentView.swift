//
//  ContentView.swift
//  InterativeUI
//
//  Created by Jolin Wang on 7/23/25.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack {
            Text("What is your name?")
                .font(.title)
        }
    }
}
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
