//
//  ContentView.swift
//  Quiz
//
//  Created by Milind Contractor on 27/5/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var timerStart: Bool
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("GradientColor1"), Color("GradientColor2"), Color("GradientColor3")], startPoint: .topTrailing, endPoint: .bottomLeading)
                .ignoresSafeArea()
            VStack {
                Image(systemName: "gamecontroller.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .padding()
                Text("the easiest quiz")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .bold()
                
                Text("You are a noob if you get even 1 wrong")
                
                Button {
                    timerStart = true
                    dismiss()
                } label: {
                    Text("Start")
                        .font(.title3)
                        .foregroundColor(.black)
                        .padding()
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
            .padding()
        }
    }
}

