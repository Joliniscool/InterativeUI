//
//  ContentView.swift
//  InterativeUI
//
//  Created by Jolin Wang on 7/23/25.
//

import SwiftUI
struct ContentView: View {
    @State private var name: String = ""
    @State private var textTitke = "What is your name?"
    var body: some View {
        VStack {
            Text("What is your name?")
                .font(.title)
            TextField("Type your name here...", text:$name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit Name"){
            }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.blue)
            
        }
        .padding()
    }
}
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
