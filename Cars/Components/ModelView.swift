//
//  ModelView.swift
//  Cars
//
//  Created by Mohamed Saad on 04/07/2024.
//

import SwiftUI

struct ModelView: View {
    //properties
    let models: [String]
    let color: Color
    
    //Body
    var body: some View {
        
        GroupBox(){
            
            DisclosureGroup("Car Models") {
                
                ForEach(Array(models.indices), id: \.self) { index in
                    Divider()
                    HStack {
                        Image(systemName: "car")
                            .foregroundStyle(color)
                        Text("Model \(index) :")
                            .foregroundStyle(color)
                            .font(.title3)
                        
                        Spacer()
                        
                        Text(models[index])
                            .foregroundStyle(.black)
                            .font(.title3)
                    }//HStack
                    .padding(.vertical, 2)
                }//ForEach
            }//DisClosureGroup
            .foregroundStyle(color)
            
        }//GroupBox
    }
}

#Preview {
    ModelView(models: carsData[2].models, color: carsData[2].gradientColor[0])
}
