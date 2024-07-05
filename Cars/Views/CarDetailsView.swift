//
//  CarDetailsView.swift
//  Cars
//
//  Created by Mohamed Saad on 04/07/2024.
//

import SwiftUI

struct CarDetailsView: View {
    
    //Properties
    var car: Car
    
    //Body
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                //Header View
                HeaderView(image: car.image, gradientColor: car.gradientColor)
                
                VStack(alignment: .leading, spacing: 15) {
                    //Car title
                    Text(car.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundStyle(car.gradientColor[0])
                    
                    //Car Headline
                    Text(car.headline)
                        .font(.title3)
                        .lineLimit(3)
                    
                    //Car Models
                    ModelView(models: car.models, color: car.gradientColor[0])
                    
                    //Car Description
                    Text("Learn more about \(car.title)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(car.gradientColor[0])
                    
                    Text(car.description)
                        .font(.footnote)
                    
                    //Links
                    FooterView()
                        .padding(.bottom, 40)
                    
                }// Vstack
                .padding(.horizontal, 15)
                .frame(maxWidth: 660)
                
            }// VStck End of Main screen
            
        }// End of ScrollView
        
        .ignoresSafeArea()
        
    }
}

#Preview {
    CarDetailsView(car: carsData[2])
}



struct FooterView: View {
    var body: some View {
        GroupBox {
            HStack {
                Link("Source: Wikipedia", destination: URL(string: "http://wikipedia.com")!)
                Spacer()
                Image(systemName: "arrow.up.right.square")
            }
        }
    }
}
