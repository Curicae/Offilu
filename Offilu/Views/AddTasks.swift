import SwiftUI

struct AddTasks: View {
    let recommendedTasks = [
        "1. Görev",
        "2. Görev",
        "3. Görev"
    ]
    
    var body: some View {
        VStack {
            Text("Görev Ekleme")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            VStack(alignment: .leading) {
                Text("Görev Adı")
                    .padding(.top)
                TextField("Görev adı giriniz", text: .constant(""))
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Tarihi")
                    .padding(.top)
                DatePicker("Seçiniz", selection: .constant(Date()), displayedComponents: .date)
                    .padding()
                
                Text("Öncelik")
                    .padding(.top)
                Picker("Öncelik", selection: .constant(1)) {
                    Text("Yüksek").tag(1)
                    Text("Orta").tag(2)
                    Text("Düşük").tag(3)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
            }
            
            Text("Tavsiyede Edilen Görevler")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.top)
            
            List(recommendedTasks, id: \.self) { task in
                HStack {
                    Text(task)
                        .padding()
                    Spacer()
                    Text("Görev Adı")
                        .padding()
                }
                .padding(.vertical, 5)
            }
            .listStyle(PlainListStyle()) 
        }
        .padding()
    }
}

#Preview {
    AddTasks()
}
