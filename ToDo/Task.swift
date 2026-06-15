//
//  SwiftUIView.swift
//  ToDo
//
//  Created by Cathrine Jacobsen on 21/05/2026.
//

import SwiftUI

struct Task: View, Identifiable {
    var id: Int
    @State private var item: String = ""
    @State private var toggle: Bool = false
    
    var body: some View {
        HStack() {
            Toggle("O", isOn: $toggle)
                .toggleStyle(.button)
                .padding(-10)
            TextField(
                "",
                text: $item
            )
        }
    }
}

#Preview {
    ContentView()
}
