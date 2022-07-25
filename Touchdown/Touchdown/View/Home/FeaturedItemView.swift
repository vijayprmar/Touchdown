//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Vijay Parmar on 01/07/22.
//

import SwiftUI

struct FeaturedItemView: View {
    
    //MARK: - Property
    
    let player : Player
    
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground )
    }
}
