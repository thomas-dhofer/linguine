//
//  inputText.swift
//  linguine
//
//  Created by Thomas Dornhofer on 26.07.26.
//

import SwiftUI

struct inputText: View {
    
    @Bindable var model: LinguiniModel

    var body: some View {
        
        TextEditor(text: $model.inputText)
            .textEditorStyle(.plain)
            .padding()
            .glassEffect(in: RoundedRectangle(cornerRadius: 16))
            .padding()
            .scrollDisabled(true)

        
    }
}
