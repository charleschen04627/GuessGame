//
//  ContentView.swift
//  GuessGame
//
//  Created by Charles on 22/05/2025.
//

import SwiftUI

struct ContentView: View {
    @State var score = 0
    @State private var currentImageIndex = 0
    @State private var timer: Timer?
    @State private var showRefreshButton = false
    @State private var message: String = ""
    let imageNames = ["dog", "cat", "fox"]
    
    var body: some View {
        VStack {
            VStack {
                Group {
                    Image(imageNames[currentImageIndex])
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .animation(.easeInOut(duration: 0.05), value: currentImageIndex)
                    if showRefreshButton {
                        Text(message)
                            .font(.system(size: 40, weight: .semibold))
                        Button(action: {
                            startImageRotation()
                        }) {
                            Image(systemName: "arrow.triangle.2.circlepath")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                        }
                    }
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
        .onAppear {
            startImageRotation()
        }
    }

    func check(answer: Int) {
        stopImageRotation()
        showRefreshButton = true
        if answer == currentImageIndex {
            score += 1
            message = "Congratulations!"
        } else {
            if score > 0 {
                score -= 1
            }
            message = "Oops! Try again."
        }
    }
    
    func startImageRotation() {
        // 停止現有的計時器
        timer?.invalidate()
        self.timer = nil
        showRefreshButton = false
        
        // 創建新的計時器，每0.05秒更新一次圖片
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            withAnimation {
                currentImageIndex = (currentImageIndex + 1) % imageNames.count
            }
        }
    }
    
    func stopImageRotation() {
        timer?.invalidate()
    }
}

#Preview {
    ContentView()
}
