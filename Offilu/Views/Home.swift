import SwiftUI
import Charts

struct TaskData: Identifiable {
    let id = UUID()
    let status: String
    let count: Int
}

struct Home: View {
    let completedTasks = 3
    let totalTasks = 5
    
    var body: some View {
        let data = [
            TaskData(status: "Tamamlanan", count: completedTasks),
            TaskData(status: "Kalan", count: totalTasks - completedTasks)
        ]
        
        ScrollView {
            VStack(spacing: 20) {
                Text("Hoş Geldiniz!")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top)

                Text("Günlük İlerleme")
                    .fontWeight(.bold)
                    .padding(.bottom)
                
                HStack {
                    ProgressView(value: 0.5, total: 1.0)
                        .frame(width: 300, height: 50)
                        .progressViewStyle(LinearProgressViewStyle(tint: .green))
                    Text("50%")
                        .bold()
                }
                .padding(.bottom)

                Text("Bugünkü Görevler")
                    .fontWeight(.bold)
                    .padding(.bottom)

                
                TasksList()
                    .frame(height: 200)
                    .padding(.bottom)

                VStack {
                    Text("İstatistikler")
                        .fontWeight(.bold)
                        .padding(.bottom)
                    
                    Chart(data) { task in
                        BarMark(
                            x: .value("Durum", task.status),
                            y: .value("Görev Sayısı", task.count)
                        )
                        .foregroundStyle(task.status == "Tamamlanan" ? .green : .red)
                    }
                    .frame(height: 250)
                    .padding()
                    .chartXAxis(.hidden)
                    .chartYAxis(.hidden)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.black, lineWidth: 2)
                )
                .padding(.bottom)

                Text("Rozetler")
                    .fontWeight(.bold)
                    .padding(.bottom)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(0..<3) { _ in
                            Image(systemName: "trophy.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .padding()
                                .background(Circle().fill(Color.yellow.opacity(0.3)))
                                .cornerRadius(25)
                        }
                    }
                }
                .padding(.bottom)
            }
            .padding(.horizontal)
        }
        .background(Color.white)
    }
}

#Preview {
    Home()
}
