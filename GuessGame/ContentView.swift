//
//  ContentView.swift
//  GuessGame
//
//  Created by Charles on 22/05/2025.
//

import SwiftUI

struct ContentView: View {
    var currentAnswer = 0
    @State var score = 0
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
               Text("Score \(score)")
                   .font(.system(size: 15, weight: .semibold))
           }
           Button(action: {
               check(answer: 0)
           }) {
               Image("dog")
                   .frame(maxWidth: .infinity)
                   .frame(height: 50)
                   .background(Color.blue)
                   .clipShape(RoundedRectangle(cornerRadius: 25))
           }
           Button(action: {
               check(answer: 1)
           }) {
               Image("cat")
                   .frame(maxWidth: .infinity)
                   .frame(height: 50)
                   .background(Color.blue)
                   .clipShape(RoundedRectangle(cornerRadius: 25))
           }
           Button(action: {
               check(answer: 2)
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

   func check(answer: Int) {
       if answer == currentAnswer {
           score += 1
       } else {
           if score > 0 {
               score -= 1
           }
       }
   }
}

#Preview {
    ContentView()
}
