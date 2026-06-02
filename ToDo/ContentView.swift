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
                .foregroundStyle(Color(red: 0.6, green: 0.2, blue: 0.0))
            Text("Out of mind")
                .foregroundStyle(Color(red: 0.6, green: 0.2, blue: 0.0))
                .font(.custom("noteworthy", size: 24))
                .fontWeight(.bold)
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundStyle(Color(red: 0.6, green: 0.2, blue: 0.0))
        }
        .padding()
        
        ScrollView {
            VStack {
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
}

#Preview {
    ContentView()
}

