//
//  linguineView.swift
//  linguine
//
//  Created by Thomas Dornhofer on 26.07.26.
//

import SwiftUI

struct linguineView: View {
    
    @State private var model = LinguiniModel()
    
    var body: some View {
        
        HStack{
            
            Text("Ready to translate")
                .font(Font.largeTitle.bold())
                .padding()
            
            Spacer()
            
        }
        
        inputChangesView(model: model)
        
        HStack{
            
            inputText(model: model)
            
            Image(systemName: "arrowshape.right.fill")
                .fontWeight(.black)
            
            answerView(model: model)
        }
        
        translateButton(model: model)
    }
}

#Preview {
    linguineView()
}
