//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 24/03/24.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding
    var isSet: Bool
    
    var body: some View {
        Button{
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
