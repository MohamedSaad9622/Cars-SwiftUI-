//
//  CarListView.swift
//  Cars
//
//  Created by Mohamed Saad on 04/07/2024.
//

import SwiftUI

struct CarListView: View {
    
    //Properties
    @AppStorage("isOnboarding") var isOnboarding = false
    @State var isSettingsViewPresented = false
    
    //Body
    var body: some View {
        
        NavigationStack {
            
            List {
                ForEach(carsData) { car in
                    NavigationLink(value: car) {
                        CarCell(car: car)
                            .padding(.bottom, 4)
                    }//NavigationLink
                }//ForEach
            }//List
            .navigationTitle("Cars")
            .navigationBarTitleDisplayMode(.large)
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isSettingsViewPresented = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }

                }
            })
            .navigationDestination(for: Car.self) { car in
                CarDetailsView(car: car)
            }//NavigationDetination

        }//NavigationStack
        .sheet(isPresented: $isSettingsViewPresented, content: {
            SettingsView()
        })
        
    }
}

#Preview {
    CarListView()
}
