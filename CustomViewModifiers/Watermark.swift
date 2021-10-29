//
//  Watermark.swift
//  CustomViewModifiers
//
//  Created by Matthew Sousa on 10/29/21.
//

import SwiftUI

/// View Modifier to add a watermark to any view
struct Watermark: ViewModifier {
    var text: String
    var color: Color = .black
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(8)
                .background(color)
                .opacity(0.55)
                .cornerRadius(12)
        }
    }
}

/// Extention to add watermark to the View protocol
extension View {
    func watermark(_ text: String, color: Color = .black) -> some View {
        return modifier(Watermark(text: text, color: color) )
    }
}
