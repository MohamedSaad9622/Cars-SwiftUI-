//
//  ContentView.swift
//  Cars
//
//  Created by Mohamed Saad on 03/07/2024.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        
        TabView {
            ForEach(carsData) { car in
                CardView(car: car)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous) )
                    .padding(.horizontal, 10)
            }
        }
        .tabViewStyle(.page)
        .padding()
    }
}

#Preview {
    OnBoardingView()
}
