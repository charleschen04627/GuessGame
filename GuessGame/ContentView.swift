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
          VStack {
              Group {
                  Text("?")
                      .font(.system(size: 100, weight: .bold))
              }
          }
           .frame(height: 350)
           HStack {
               Spacer()
               Text("Score 0")
                   .font(.system(size: 15, weight: .semibold))
           }
           Button(action: {
               print("Hello, Button 1")
           }) {
               Image("dog")
                   .frame(maxWidth: .infinity)
                   .frame(height: 50)
                   .background(Color.blue)
                   .clipShape(RoundedRectangle(cornerRadius: 25))
           }
           Button(action: {
               print("Hello, Button 2")
           }) {
               Image("cat")
                   .frame(maxWidth: .infinity)
                   .frame(height: 50)
                   .background(Color.blue)
                   .clipShape(RoundedRectangle(cornerRadius: 25))
           }
           Button(action: {
               print("Hello, Button 3")
           }) {
               Image("fox")
                   .frame(maxWidth: .infinity)
                   .frame(height: 50)
                   .background(Color.blue)
                   .clipShape(RoundedRectangle(cornerRadius: 25))
           }
           Spacer()
       }
       .padding()
   }
}

#Preview {
    ContentView()
}
