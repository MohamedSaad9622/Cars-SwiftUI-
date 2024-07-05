//
//  CardView.swift
//  Cars
//
//  Created by Mohamed Saad on 03/07/2024.
//

import SwiftUI

struct CardView: View {
    //Properties
    let car: Car
    @State var isAnimating: Bool = false
    @AppStorage("isOnboarding") var isOnboarding = true
    //Body
    var body: some View {
        
        VStack{
            Spacer()
            
            Image(car.image)
                .resizable()
                .scaledToFit()
                .padding()
                .scaleEffect(isAnimating ? 1 : 0.3 )
                .animation(.linear(duration: 0.5), value: isAnimating)
            
            Spacer()
            
            Text(car.title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.white)
            
            Spacer()
            
            Text(car.headline)
                .foregroundStyle(.white)
                .font(.title3)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()

            Spacer()
            
            Button(action: {
                isOnboarding = false
            }, label: {
                Image(systemName: "arrowshape.right.circle")
                Text("Start")
            })
            .font(.largeTitle)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .foregroundStyle(.white)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.5) )
            Spacer()
            
        }// VStack End
        .shadow(color: .black, radius: 2, x: 2, y: 2)
        .background( LinearGradient(gradient: Gradient(colors: car.gradientColor), startPoint: .top, endPoint: .bottom) )
        .onAppear(perform: {
            isAnimating = true
        })
        
        
        
        
    }
}

#Preview {
    CardView(car: carsData[5])
}
