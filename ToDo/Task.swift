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
    
    var body: some View {
        TextField(
            "",
            text: $item
        )
    }
}

#Preview {
    ContentView()
}
