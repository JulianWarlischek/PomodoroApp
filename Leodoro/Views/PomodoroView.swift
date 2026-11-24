//
//  PomodoroView.swift
//  Leodoro
//
//  Created by Warlischek Julian on 24.11.26.
//

import SwiftUI

struct PomodoroView: View {
    
    @State var viewModel = PomodoroViewModel(pomodoroManager: PomodoroManager())
    
    var body: some View {
        VStack {
            Text("Hello World")
                .font(.title)
                .padding([.leading, .trailing], 20)
                .padding(.top, 20)
            
            Spacer()
            
            ZStack {
                CircularProgressView(progress: viewModel.progress, color: viewModel.progressColor)
                    .opacity(viewModel.isProgressVisible ? 1 : 0)
                
                Image("Pomodoro")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }.padding(60)
            Spacer()
            
            Text("Hello World")
                .font(.largeTitle)
                .bold()
        }.background(viewModel.progressColor)
            .opacity(0.5)
            .task {
                //Starte Timer
            }
            .onDisappear {
                //Stoppe Timer
            }
    }
}

#Preview {
    PomodoroView()
}
