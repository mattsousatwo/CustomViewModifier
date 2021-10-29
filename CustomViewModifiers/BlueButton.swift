//
//  BlueButton.swift
//  CustomViewModifiers
//
//  Created by Matthew Sousa on 10/29/21.
//

import SwiftUI

/// Creating a new modifier called BlueButton
struct BlueButton: ViewModifier {
    
    /// Conforming to the one requirement of the ViewModifier protocol
    func body(content: Content) -> some View {
        content
            .foregroundColor(.blue)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.blue)
            )
    }
}

/// Adding an extension to the View protocol to access the BlueButtonModifier in any object that conforms to View
extension View {
    func blueButtonStyle() -> some View {
        return modifier(BlueButton() )
    }
}

struct ViewSection: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 12)                    
                    .stroke(lineWidth: 2)
                    .foregroundColor(.gray)
                    .shadow(radius: 6)
            )

    }
}

extension View {
    func viewSection() -> some View {
        return modifier(ViewSection() )
    }
}

