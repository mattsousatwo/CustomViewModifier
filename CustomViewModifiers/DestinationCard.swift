//
//  DestinationCard.swift
//  CustomViewModifiers
//
//  Created by Matthew Sousa on 10/29/21.
//

import SwiftUI

@available (iOS 15.0, *)
struct DestinationCard: View {
    
    var image: String
    var locationName: String
    var location: String
    var description: String
    
    var body: some View {
        
        HStack {
            
            /// Text uses the .bold() & .padding() modifiers to adjust the view as needed
            Image(image)
                .resizable()
                .frame(width: 200,
                       height: 200,
                       alignment: .center)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.teal, lineWidth: 4))
                .shadow(radius: 10)
                .padding(.leading)
            
            
            
            HStack {
            VStack(alignment: .leading) {
                Text(locationName)
                    .bold()
                    .padding(.leading)
                Text(location)
                    .padding(.leading)
                
                Text(description)
                    .fontWeight(.light)
                    .font(.system(size: 14))
                    .padding(.bottom)
                    .padding(.leading)
                    .padding(.top, 1)
                
                Spacer()
            }
                segueButton()
                
                
            }
            .viewSection()
            .padding(.vertical)
            
            Spacer()
        }
        
        
        
        .frame(width: 525,
               height: 250,
               alignment: .center)
        .cornerRadius(12)
        
        
    }
    
    
    func segueButton() -> some View {
        Image(systemName: "chevron.right")
            .resizable()
            .foregroundColor(.gray)
            .frame(width: 10, height: 35, alignment: .center)
            .padding(.leading, 1)
            
    }
}

@available (iOS 15.0, *)
struct DestinationCard_Previews: PreviewProvider {
    static var previews: some View {
        
        let imageName = "mount_fuji"
        let locationName = "Mount Fuji"
        let location = "Fuji Hakone Izu National Park, Japan"
        let description = "Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige."
        
        
        DestinationCard(image: imageName,
                        locationName: locationName,
                        location: location,
                        description: description).previewLayout(.sizeThatFits)
        
    }
}
