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
            Color.white
                .ignoresSafeArea()
            
            VStack {
                Text("Hello, world!")
                    .padding()
                    .blueButtonStyle()
                    .watermark("Hello, World", color: .orange)
                
                
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100,
                           height: 100,
                           alignment: .center)
                    .blueButtonStyle()
                    .watermark("Person", color: .red)
                    
                    
   
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


