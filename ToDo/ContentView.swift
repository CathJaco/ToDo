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
            Image(systemName: "brain")
                .imageScale(.large)
            Text("O U T  O F  M I N D")
                .font(.custom("AvenirNextCondensed-Regular", size: 24))
            Image(systemName: "brain")
                .imageScale(.large)
                .scaleEffect(x: -1, y: 1)
        }
        .padding()
        .foregroundStyle(Color(red: 0.6, green: 0.2, blue: 0.0))
        
        ScrollView {
            VStack {
                Day(dayName: "M O N D A Y")
                Day(dayName: "T U E S D A Y")
                Day(dayName: "W E D N E S D A Y")
                Day(dayName: "T H U R S D A Y")
                Day(dayName: "F R I D A Y")
                Day(dayName: "S A T U R D A Y")
                Day(dayName: "S U N D A Y")
            }
        }
    }
}

#Preview {
    ContentView()
}

