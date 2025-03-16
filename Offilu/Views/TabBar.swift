import SwiftUI

struct TabBar: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationStack {
                Home()
            }
            .tabItem {
                Label("Ana Sayfa", systemImage: "house.fill")
            }
            .tag(0)
            
            NavigationStack {
                Tasks()
            }
            .tabItem {
                Label("Görevler", systemImage: "doc.text.fill")
            }
            .tag(1)
            
            NavigationStack {
                AddTasks()
            }
            .tabItem {
                Label("Ekle", systemImage: "plus.circle.fill")
            }
            .tag(2)
            
            NavigationStack {
                Settings()
            }
            .tabItem {
                Label("Ayarlar", systemImage: "person.crop.circle.fill")
            }
            .tag(3)
            
            NavigationStack {
                Badges()
            }
            .tabItem {
                Label("Rozetler", systemImage: "star.circle.fill")
            }
            .tag(4)
        }
        .tint(.blue)
    }
}

#Preview {
    TabBar()
}
