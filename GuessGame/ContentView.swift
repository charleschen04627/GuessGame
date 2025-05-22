//
//  ContentView.swift
//  GuessGame
//
//  Created by Charles on 22/05/2025.
//

import SwiftUI

struct ContentView: View {
   var body: some View {
       VStack {
           HStack {
               Spacer()
               Text("Guess the Animal")
           }
           Button(action: {}) {
               Text("Button")
           }
           Button(action: {}) {
               Text("Button")
           }
           Button(action: {}) {
               Text("Button")
           }
       }
       .padding()
   }
}

#Preview {
    ContentView()
}
