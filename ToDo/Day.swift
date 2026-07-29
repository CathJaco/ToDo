//
//  Day.swift
//  ToDo
//
//  Created by Cathrine Jacobsen on 13/05/2026.
//

import SwiftUI

struct Day: View {
    var dayName: String
    @State var oppgaver: [Oppgave] = []
    @State var id = 0
    
    var body: some View {
        VStack() {
            
            Text(dayName)
                .foregroundStyle(Color(red: 0.6, green: 0.2, blue: 0.0))
                .font(.custom("AvenirNextCondensed-Regular", size: 16))
                .fontWeight(.bold)
            VStack {
                ForEach(oppgaver) { oppgave in
                    oppgave
                }
            }
            Button("Add", systemImage: "plus", action: addOppgave)
            .labelStyle(.iconOnly)
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(Color(red: 1.0, green: 1.0, blue: 1.0))
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(red: 0.9, green: 0.5, blue: 0.3) .opacity(0.3))
    }
    
    func addOppgave(){
        let newTask = Oppgave(id: self.id, onSubmit: addOppgave, onToggled: removeOppgave)
        self.oppgaver.append(newTask)
        self.id = id + 1
    }
    
    func removeOppgave(selectedOppgave: Oppgave) {
        Task {
            try? await Task.sleep(for: .seconds(1))
            
            if selectedOppgave.toggled {
                
                oppgaver.removeAll { oppgave in
                    oppgave.id == selectedOppgave.id
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

