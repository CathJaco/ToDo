//
//  OOM_Toggle.swift
//  ToDo
//
//  Created by Cathrine Jacobsen on 04/08/2026.
//

import SwiftUI

struct OOM_Toggle: View {
    @State var selected: Bool = false
    
    var onToggled: () -> Void
    var body: some View {
        ZStack {
            Image (systemName: "brain.fill")
                .foregroundStyle(.white)
            Image (systemName: "brain")
                .foregroundStyle(toggleColor())
                .onTapGesture {
                    selected = !selected
                }
        }
    }
    
    func toggleColor () -> Color {
        if (selected) {
            return Color(red: 1.0, green: 0.7, blue: 0.1)
        }
        else {
            return Color(red: 0.6, green: 0.2, blue: 0.0)
        }
    }
    func onToggled ()
}

#Preview {
    OOM_Toggle()
}
