//
//  ContentView.swift
//  linguine
//
//  Created by Thomas Dornhofer on 26.07.26.
//

import SwiftUI

struct inputChangesView: View {
    
    @Bindable var model: LinguiniModel

    var body: some View {
        HStack {
            
            TextField("Your changes...", text: $model.inputChanges)
                .textFieldStyle(.plain)
                .font(.system(size: 14))
                .foregroundColor(Color.white)
                .lineSpacing(4)
                .padding()
                .glassEffect()
                .contentShape(Rectangle())
            
        }
        .padding()
    }
    
}
