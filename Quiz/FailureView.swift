import SwiftUI

struct FailureView: View {
    @Binding var pointsAchieved: Int
    @Binding var index: Int
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Text("You got \(pointsAchieved) out of \(questions.count)!")
            .font(.title)
            .multilineTextAlignment(.center)
            .padding()
        if pointsAchieved <= 0 {
            Text("Better up and come back you noob!")
                .font(.subheadline)
        } else {
            Text("Surprised you even went this far! Good job! 👍🏻")
                .font(.subheadline)
        }
        Button {
            index = 0
            pointsAchieved = 0
            dismiss()
        } label: {
            Text("Restart if you are ready")
        }
        .buttonBorderShape(.capsule)
        .buttonStyle(.borderedProminent)
        .padding()
        Button {
            exit(0)
        } label: {
            Text("Exit app")
        }
        .buttonBorderShape(.capsule)
        .buttonStyle(.bordered)
        .padding()
    }
}

