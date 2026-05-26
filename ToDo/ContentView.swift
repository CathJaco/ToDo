//
//  ContentView.swift
//  ToDo
//
//  Created by Cathrine Jacobsen on 13/05/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundStyle(.brown)
            Text("Your To Dos")
                .foregroundStyle(.brown)
        }
        .padding()
        .padding()
        List {
            Day(dayName: "MONDAY")
            Day(dayName: "TUESDAY")
            Day(dayName: "WEDNESDAY")
            Day(dayName: "THURSDAY")
            Day(dayName: "FRIDAY")
            Day(dayName: "SATURDAY")
            Day(dayName: "SUNDAY")
            }
    }
}

#Preview {
    ContentView()
}

