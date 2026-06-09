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
            
            Text(dayName)
                .foregroundStyle(Color(red: 0.6, green: 0.2, blue: 0.0))
                .font(.custom("AvenirNextCondensed-Regular", size: 16))
                .fontWeight(.bold)
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
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(Color(red: 1.0, green: 1.0, blue: 1.0))
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(red: 0.9, green: 0.5, blue: 0.3) .opacity(0.3))
    }

}

#Preview {
    ContentView()
}

