//
//  HeaderView.swift
//  Cars
//
//  Created by Mohamed Saad on 04/07/2024.
//

import SwiftUI

struct HeaderView: View {
    //Properties
    var image: String
    var gradientColor: [Color]
    @State var isAnimating: Bool = false
    
    //Body
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1 : 0.3)
                .animation(.linear(duration: 0.5), value: isAnimating)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 440, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: gradientColor, startPoint: .topLeading, endPoint: .bottomTrailing))
        .onAppear(perform: {
            isAnimating.toggle()
        })
    }
    
}

#Preview {
    HeaderView(image: carsData[0].image, gradientColor: carsData[0].gradientColor)
}
