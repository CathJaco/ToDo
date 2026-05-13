//
//  Day.swift
//  ToDo
//
//  Created by Cathrine Jacobsen on 13/05/2026.
//

import SwiftUI

struct Day: View {
    var dayName: String
    var body: some View {
        GroupBox(label:
                Label(dayName, systemImage: "building.columns")
        ){
            Text("test")
            
        }
    }
}

#Preview {
    Day(dayName: "MONDAY")
}
