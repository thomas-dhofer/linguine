//
//  translateButton.swift
//  linguine
//
//  Created by Thomas Dornhofer on 26.07.26.
//

import SwiftUI

struct translateButton: View {
    
    @State var disabled = false

    @State var answer:AttributedString = ""
    
    @State var model:LinguiniModel
    
    var body: some View {
        
        Button{
                
            guard !model.inputChanges.isEmpty || !model.inputText.isEmpty else { return }
            
            Task{
                disabled = true
                
                let prompt = """
                Task: Translate the text according to the target style/language.

                Example:
                Target: Französisch
                Text: Hallo
                Translation: Bonjour

                Task:
                Target: \(model.inputChanges)
                Text: \(model.inputText)
                Translation:
                
                
                CRITICAL INSTRUCTION: Output ONLY the raw translation text. Do not include introductory text, explanations, or quotes.
                
                """
                            
                let response = await OllamaService.sendToOllama(prompt)
                
                disabled = false
                
                model.outputText = response
            }
            

        }label: {
            Text("Translate")
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.red)
                .foregroundStyle(Color.white)
                .glassEffect()
                .contentShape(Rectangle())
                .cornerRadius(20)
            
        }
        .buttonStyle(.plain)
        .padding()
        .disabled(disabled)
        
    }
}

