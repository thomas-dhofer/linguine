//
//  ContentView.swift
//  linguine
//
//  Created by Thomas Dornhofer on 26.07.26.
//

import SwiftUI

struct inputViewChanges: View {
    
    @State var inputChanges = ""

    var body: some View {
        HStack {
            
            TextField("Your changes...", text: $inputChanges)
                .textFieldStyle(.plain)
                .padding()
                .glassEffect()
            
            Button{

                
            }label: {
                Image(systemName: "checkmark")
                    .padding()
                    .contentShape(Rectangle())
                    .glassEffect()
            }
            .buttonStyle(.plain)

            
        }
        .padding()
    }
}

#Preview {
    inputViewChanges()
}
