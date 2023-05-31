import SwiftUI

struct KahootView: View {
    @State var points: Int = 11
    @State var index: Int = 0
    @State var questionAllDone = false
    @State var summonCorrect = false
    @State var summonFalse = false
    @State var startScreen = true
    @State var isTimerRunning = false
    @State var timeRunOut = false
    @State private var startTime = Date()
    @State private var timerString = "10"
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("Q\(index + 1): \(questions[index].question)")
                .font(.system(size: 35))
                .multilineTextAlignment(.center)
                .padding()
            ZStack {
                Circle()
                    .foregroundColor(.purple)
                    .frame(width: 100, height: 100)
                Text(self.timerString)
                    .font(Font.system(.largeTitle))
                    .foregroundColor(.white)
                    .bold()
                    .onReceive(timer) { _ in
                        if self.isTimerRunning {
                            let timeRemaining = Int(timerString)! - 1
                            timerString = String(timeRemaining)
                            
                            if timerString == "0" {
                                timeRunOut = true
                                isTimerRunning = false
                            }
                        }
                    }
            }
            
            
            VStack {
                HStack {
                    Button {
                        isTimerRunning = false
                        if questions[index].options[0] == questions[index].correctAnswer {
                            summonCorrect = true
                        } else {
                            summonFalse = true
                        }
                    } label: {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.red)
                                .frame(width: 180, height: 150)
                                .cornerRadius(10)
                            HStack {
                                Image(systemName: "triangle.fill")
                                    .foregroundColor(.white)
                                Text("\(questions[index].options[0])")
                                    .font(.title3)
                                    .bold()
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    Button {
                        isTimerRunning = false
                        if questions[index].options[1] == questions[index].correctAnswer {
                            summonCorrect = true
                        } else {
                            summonFalse = true
                        }
                        
                    } label: {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.blue)
                                .frame(width: 180, height: 150)
                                .cornerRadius(10)
                            HStack {
                                Image(systemName: "diamond.fill")
                                    .foregroundColor(.white)
                                Text("\(questions[index].options[1])")
                                    .font(.title3)
                                    .bold()
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
                HStack {
                    Button {
                        isTimerRunning = false
                        if questions[index].options[2] == questions[index].correctAnswer {
                            summonCorrect = true
                        } else {
                            summonFalse = true
                        }
                        
                    } label: {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.yellow)
                                .frame(width: 180, height: 150)
                                .cornerRadius(10)
                            HStack {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.white)
                                Text("\(questions[index].options[2])")
                                    .font(.title3)
                                    .bold()
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    Button {
                        isTimerRunning = false
                        if questions[index].options[3] == questions[index].correctAnswer {
                            summonCorrect = true
                        } else {
                            summonFalse = true
                        }
                        
                    } label: {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.green)
                                .frame(width: 180, height: 150)
                                .cornerRadius(10)
                            HStack {
                                Image(systemName: "square.fill")
                                    .foregroundColor(.white)
                                Text("\(questions[index].options[3])")
                                    .font(.title3)
                                    .bold()
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
            }
            .padding(.horizontal, 10.0)
        }
        
        .fullScreenCover(isPresented: $questionAllDone) {
            FailureView(pointsAchieved: $points, index: $index)
        }
        .fullScreenCover(isPresented: $startScreen) {
            ContentView(timerStart: $isTimerRunning)
        }
        .alert("Your answer is wrong, you noob!", isPresented: $summonFalse) {
            Button("😭", role: .cancel) {
                points = points - 1
                timerString = "10"
                isTimerRunning = true
                if index != 10 {
                    index = index + 1
                } else {
                    questionAllDone = true
                }
            }
        }
        .alert("Your answer is correct, good job!", isPresented: $summonCorrect) {
            Button("😁", role: .cancel) {
                print("😁")
                points = points + 1
                timerString = "10"
                isTimerRunning = true
                if index != 10 {
                    index = index + 1
                } else {
                    questionAllDone = true
                }
            }
        }
        .alert("🐌 You ran out of time, you turtle! 🐢", isPresented: $timeRunOut) {
            Button("🐢", role: .cancel) {
                print("")
                points = points - 1
                timerString = "10"
                isTimerRunning = true
                if index != 10 {
                    index = index + 1
                } else {
                    questionAllDone = true
                }
            }
        }
    }
}

struct KahootView_Previews: PreviewProvider {
    static var previews: some View {
        KahootView()
    }
}

