//
//  ContentView.swift
//  InterativeUI
//
//  Created by Jolin Wang on 7/23/25.
//

import SwiftUI
struct ContentView: View {
    @State private var name: String = ""
    @State private var textTitle = "What is your name?"
    @State private var showButton = true // Controls button visibility
    @State private var showMoodButtons = false
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            TextField("Type your name here...", text:$name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            if showButton {
                          Button("Submit Name") {
                              print(name)
                              textTitle = "Welcome, \(name)!"
                              showButton = false
                              // Delay before showing mood buttons
                              DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                                  textTitle = "How are you?"
                                  showMoodButtons = true
                              }
                          }
                          .font(.title2)
                          .buttonStyle(.borderedProminent)
                          .tint(.blue)
                      }

                      if showMoodButtons {
                          HStack(spacing: 20) {
                              Button("Good") {
                                  print("Feeling good!")
                              }
                              Button("Not Good") {
                                  print("Not feeling good.")
                              }
                              Button("Meh") {
                                  print("Feeling meh.")
                              }
                          }
                          .font(.title3)
                          .buttonStyle(.bordered)
                      }
                  
        }
        .padding()
    }
}
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
