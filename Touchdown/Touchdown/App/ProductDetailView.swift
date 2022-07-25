//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Vijay Parmar on 07/07/22.
//

import SwiftUI

struct ProductDetailView: View {
    
    //Property
    @EnvironmentObject var shop:Shop
    
    //Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //Navbar
            NavigationBarDetailView()
                .padding()
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            //Header
            HeaderDetailView()
                .padding(.horizontal)
            //Detail Top Part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            //Detail Bottom Part
            VStack(alignment: .center, spacing: 0, content: {
                //Ratings + Sizes
                RatingSizesDetailView()
                    .padding(.top,-20)
                    .padding(.bottom,10)
                //Description
                ScrollView(.vertical,showsIndicators: false,content: {
                    Text( shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body,design: .rounded))
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                })//Scrollview
                
                //Quantity + Favourits
                QuantityFavouriteDetailView()
                    .padding(.vertical,10)
                //Add To Cart
                AddToCartDetailView()
                    .padding(.bottom,20)
            })//VStack
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomeShape())
                .padding(.top,-105)
            )
        })//Vstack
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue, opacity: 1)).ignoresSafeArea(.all,edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
