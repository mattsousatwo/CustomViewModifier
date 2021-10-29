//
//  ContentView.swift
//  CustomViewModifiers
//
//  Created by Matthew Sousa on 10/29/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
                .watermark("Matt Sousa")
            
            VStack {
                Text("Hello, world!")
                    .blueButtonStyle()
                    .padding()
                    .watermark("Hello World!",
                               color: .red)
                
                
                Image(systemName: "globe")
                    .resizable()
                    .frame(width: 100,
                           height: 100,
                           alignment: .center)
                    .blueButtonStyle()
                    .watermark("Globe",
                               color: .green)
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


