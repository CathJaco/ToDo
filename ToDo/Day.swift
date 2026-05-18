//
//  Day.swift
//  ToDo
//
//  Created by Cathrine Jacobsen on 13/05/2026.
//

import SwiftUI

struct Day: View {
    var dayName: String
    @State var tasks: [String] = ["tekst", "noe nytt"]
    
    var body: some View {
        GroupBox(label:
                Label(dayName, systemImage: "heart")
        ) {
            List(tasks, id: \.self) { task in
                Text(task)
            }
            Button("Add", systemImage: "plus", action: {
                tasks.append("hæ")
            })
                .labelStyle(.iconOnly)
            
        }
    }

}

#Preview {
    Day(dayName: "MONDAY")
}

