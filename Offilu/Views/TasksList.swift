//
//  TasksList.swift
//  Offilu
//
//  Created by Neşat Aslan on 16.03.2025.
//

import SwiftUI

struct TasksList: View {
    var body: some View {
        let tasks = [
            "1. Görev",
            "2. Görev",
            "3. Görev",
            "4. Görev",
            "5. Görev",
            "6. Görev"
        ]
        List(tasks, id: \.self) { task in
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
}

#Preview {
    TasksList()
}
