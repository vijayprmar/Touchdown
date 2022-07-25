//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Vijay Parmar on 06/07/22.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                
                Section(header: SectionView(rotateClockWise: false), footer: SectionView(rotateClockWise: true)) {
                    ForEach(categories){ category in
                        CategoryItemView(category: category)
                    }
                }
  
            }//Grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            
            
        }//Scrollview
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
