//
//  CarCell.swift
//  Cars
//
//  Created by Mohamed Saad on 04/07/2024.
//

import SwiftUI

struct CarCell: View {
    
    //Properties
    let car : Car
    
    //Body
    var body: some View {
        HStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(colors: car.gradientColor, startPoint: .topLeading, endPoint: .bottomTrailing))

                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                .shadow( color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 2, x: 2, y: 2)
                .padding(.trailing, 3)
            
            VStack(alignment: .leading, spacing: 5){
                Text(car.title)
                    .font(.title2)
                    .fontWeight(.heavy)
                Text(car.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(3)
                
            }
            Spacer()
        }
    }
}

#Preview {
    CarCell(car: carsData[0])
}
