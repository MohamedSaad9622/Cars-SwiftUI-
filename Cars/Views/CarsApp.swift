//
//  CarsApp.swift
//  Cars
//
//  Created by Mohamed Saad on 03/07/2024.
//

import SwiftUI

@main
struct CarsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding = true
    
    var body: some Scene {
        
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            }else{
                CarListView()
            }
            
        }
    }
}

