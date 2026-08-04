//
//  SwiftUIView.swift
//  ToDo
//
//  Created by Cathrine Jacobsen on 21/05/2026.
//

import SwiftUI

struct Oppgave: View, Identifiable {
    var id: Int
    var onSubmit: () -> Void
    var onToggled: (Oppgave) -> Void
    
    @State private var item: String = ""
    @State var toggled: Bool = false
    @FocusState private var isFocused: Bool
    
    var body: some View {
        HStack() {
            // Toggle("O", isOn: $toggled)
             //   .toggleStyle(.button)
              //  .padding(-10)
              //  .onChange(of: toggled) {
              //      self.onToggled(self)
              //  }
            OOM_Toggle()
                
            TextField("", text: $item)
                .focused($isFocused)
                .onAppear {
                    isFocused = true
                }
                .onSubmit {
                    self.onSubmit() 
                }
        }
    }
}

#Preview {
    ContentView()
}
