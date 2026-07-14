//
//  SwiftUIView.swift
//  ToDo
//
//  Created by Cathrine Jacobsen on 21/05/2026.
//

import SwiftUI

struct Task: View, Identifiable {
    var id: Int
    var onSubmit: () -> Void
    
    @State private var item: String = ""
    @State private var toggle: Bool = false
    @FocusState private var isFocused: Bool
    
    var body: some View {
        HStack() {
            Toggle("O", isOn: $toggle)
                .toggleStyle(.button)
                .padding(-10)
            TextField(
                "",
                text: $item
                
            ) .focused($isFocused)
                .onAppear {
                    isFocused = true
                }
                .onSubmit {
                    self.onSubmit() //referer til noe et annet sted
                }
        }
    }
}

#Preview {
    ContentView()
}
