import SwiftUI

struct Badges: View {
    let badges = Array(repeating: "trophy.fill", count: 10)

    var body: some View {
        VStack {
            Text("Rozetler")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(0..<10) { _ in
                        Image(systemName: "trophy.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .padding()
                            .background(Circle().fill(Color.yellow.opacity(0.3))) // Arka plan rengi
                            .cornerRadius(25)
                    }
                }
            }
            .padding(.bottom)
        }
    }
}

#Preview {
    Badges()
}
