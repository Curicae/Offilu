import SwiftUI

struct Tasks: View {
    
    
    var body: some View {
        VStack {
            Text("Görevler")
                .bold()
                .font(.title)
                .padding()
            
            TasksList()
        }
    }
}

#Preview {
    Tasks()
}
