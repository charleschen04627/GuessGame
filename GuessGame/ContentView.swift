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
           Button(action: {
               print("Hello, Button 1")
           }) {
               Text("Button")
           }
           Button(action: {
               print("Hello, Button 2")
           }) {
               Text("Button")
           }
           Button(action: {
               print("Hello, Button 3")
           }) {
               Text("Button")
           }
       }
       .padding()
   }
}

#Preview {
    ContentView()
}
