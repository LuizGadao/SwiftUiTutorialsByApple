//
//  ContentView.swift
//  Landmarks
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 21/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                
                Text("Turtle Rock")
                    .font(.largeTitle)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About the Turtle Rock")
                    .font(.title2)
                
                Text("Describe the text goes here...")
                
                Divider()
            }
            .padding()
            
            Spacer()
        }
            
            
    }
}

#Preview {
    ContentView()
}
