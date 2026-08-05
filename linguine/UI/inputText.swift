//
//  inputText.swift
//  linguine
//
//  Created by Thomas on 26.07.26.
//

import SwiftUI

struct inputText: View {
    
    @Bindable var model: LinguiniModel

    var body: some View {
        
        TextEditor(text: $model.inputText)
            .textEditorStyle(.plain)
            .font(.system(size: 14))
            .lineSpacing(4)
            .padding()
            .glassEffect(in: RoundedRectangle(cornerRadius: 16))
            .padding()
            .foregroundStyle(Color.white)
        
    }
}
