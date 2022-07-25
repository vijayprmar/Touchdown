//
//  SectionView.swift
//  Touchdown
//
//  Created by Vijay Parmar on 06/07/22.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockWise:Bool
    
    
    var body: some View {
        VStack(spacing:0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? -90 : 90))
            Spacer()
        }//Vstack
        .background(colorGray.cornerRadius(12 ))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockWise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
        
    }
}
