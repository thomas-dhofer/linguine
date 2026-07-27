//
//  ollamaCall.swift
//  aimicus
//
//  Created by Thomas Dornhofer on 26.07.26.
//

import Foundation

class OllamaService {
        
    static func sendToOllama(_ text: String) async -> AttributedString{
        
        var req = URLRequest(url: URL(string: "http://127.0.0.1:11434/api/chat")!)
        req.httpMethod = "POST"
        
        req.httpBody = try? JSONSerialization.data(withJSONObject: [
            "model": "translategemma:4b",
            "stream": false,
            "messages": [
                    [
                        "role": "user",
                        "content": text
                    ]
                ]
        ])
        req.setValue("application/json", forHTTPHeaderField: "Content-Type")
                
        guard let (data, _) = try? await URLSession.shared.data(for: req) else { return ""}
        
        if let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
           let message = (json["message"] as? [String: Any])?["content"] as? String {
            var options = AttributedString.MarkdownParsingOptions()
            options.interpretedSyntax = .inlineOnlyPreservingWhitespace
            let md = (try? AttributedString(markdown: message, options: options)) ?? AttributedString("")
            return md
        }
        
        return ""
    }

}
