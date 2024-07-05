//
//  Car.swift
//  Cars
//
//  Created by Mohamed Saad on 03/07/2024.
//

import SwiftUI

struct Car: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColor: [Color]
    let description: String
    let models: [String]
}
