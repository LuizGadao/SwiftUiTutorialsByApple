//
//  LandMarkRow.swift
//  Landmarks
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 22/03/24.
//

import SwiftUI

struct LandMarkRow: View {
    
    let landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return Group {
        LandMarkRow(landmark: landmarks[0])
        LandMarkRow(landmark: landmarks[1])
        LandMarkRow(landmark: landmarks[2])
        LandMarkRow(landmark: landmarks[3])
    }.padding(.leading)
    
}
