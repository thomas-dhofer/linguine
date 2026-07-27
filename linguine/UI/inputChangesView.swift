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
                .font(.system(size: 16))
                .lineSpacing(4)
                .padding()
                .glassEffect()
            
        }
        .padding()
    }
    
}
