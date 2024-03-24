//
//  CircleImage.swift
//  Landmarks
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 21/03/24.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .frame(height: 200)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
        
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
