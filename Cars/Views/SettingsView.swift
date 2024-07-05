//
//  SettingsView.swift
//  Cars
//
//  Created by Mohamed Saad on 05/07/2024.
//

import SwiftUI

struct SettingsView: View {
    //Properties
    @AppStorage("isOnboarding") var isOnboarding = true
    @Environment(\.dismiss) var dismiss
    //Body
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
                GroupBox {
                    HStack{
                        Text("Cars".uppercased())
                            .font(.title3)
                        Spacer()
                        Image(systemName: "info.circle")
                            .font(.title)
                    }// HStack first cell
                    
                    Divider()
                    
                    HStack{
                        Image("icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80 , alignment: .center)
                        Text("Cars App includes very important information about the luxury car, it has details about the history, different models")
                    }// HStack second cell
                    
                }// GroupBox
                
                Toggle(isOn: $isOnboarding, label: {
                    if isOnboarding {
                        Text("Restarted".uppercased())
                            .foregroundStyle(.green)
                            .font(.title2)
                    }else{
                        Text("Restart".uppercased())
                            .foregroundStyle(.gray)
                            .font(.title2)
                    }
                    
                })
                .padding()
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                
                Spacer()
            }// VStack Main
            .navigationTitle("Settings")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.title2)
                    })
                }
            })
        }//NavigationStack
        
        
    }
}

#Preview {
    SettingsView()
}
