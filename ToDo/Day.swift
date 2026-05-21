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
        GroupBox(label:
                Label(dayName, systemImage: "heart")
        ) {
            List(tasks) { task in
                task
            }
            Button("Add", systemImage: "plus", action: {
                tasks.append(Task())
                id = id + 1
            })
                .labelStyle(.iconOnly)
            
        }
    }

}

#Preview {
    Day(dayName: "MONDAY")
}

