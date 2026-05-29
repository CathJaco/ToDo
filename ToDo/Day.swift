//
//  Day.swift
//  ToDo
//
//  Created by Cathrine Jacobsen on 13/05/2026.
//

import SwiftUI

struct Day: View {
    var dayName: String
    @State var tasks: [Task] = []
    @State var id = 0
    
    var body: some View {
        VStack() {
            
            Label(dayName, systemImage: "heart")

            VStack {
                ForEach(tasks) { task in
                    task
                }
            }
            Button("Add", systemImage: "plus") {
                tasks.append(Task(id: id))
                id = id + 1
            }
                .labelStyle(.iconOnly)
            
        }
        .padding()
        .background(Color(red: 0.3, green: 0.75, blue: 0.7) .opacity(0.3))
    }

}

#Preview {
    ContentView()
}

