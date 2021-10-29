//
//  ViewSection.swift
//  CustomViewModifiers
//
//  Created by Matthew Sousa on 10/29/21.
//

import SwiftUI

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

