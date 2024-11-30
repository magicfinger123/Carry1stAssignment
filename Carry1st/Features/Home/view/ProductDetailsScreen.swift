//
//  ProductDetailsScreen.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//

import SwiftUI

struct ProductDetailsScreen: View {
    var details: ProductItem
    @State private var itemCount: Int = 0
    @Environment(\.presentationMode) var presentationMode
    @State private var selection = 0
    @State private var selectedSize = ""
    @State private var selectedColor: Color = .brown
    @State private var isChecked = false

    let productColors: [Color] = [.red, .blue, .green, .yellow, .purple,.black,.gray]
    var body: some View {
        VStack {
            ProductAPPBar(backTap: {presentationMode.wrappedValue.dismiss()})
            Spacer().frame(height: 10)
            
            ScrollView(showsIndicators: true) {
                ProductImageWidget(selection: selection)
                productInfo(
                    code: "Alpha Code: A8GH9-21944", name: details.name ?? "", amount: String(details.price ?? 0.0), condition: "New")
                
                ColorSelectionView(selectedColor: $selectedColor, colors: productColors)
                
                SizeSelectionView(selectedSize: $selectedSize, sizes: productSizes)
                ProductStoreVistDescriptionGift(
                    isGift: $isChecked,
                    vistStoreTap: {},
                    storeName: details.description ?? "", description: "jsjsjswow")
                
            }//scroll view
            
            HStack {
                CounterBtn(count: $itemCount, minValue: 0, maxValue: 100000000000)
                AddToCartBtn(tap: {
                    
                })
                
            }
            .padding(.all, 16.0)
            
        }.background(Color.white)
            .navigationBarHidden(true)
    }
}

//#Preview {
//    ProductDetailsScreen(details: Product(name: "Nike Air Jordan 4", description: "Kicks of Lagos", image: "laptop",price: "₦154,900.00",addedToCart: false,addedToFavorite: false,promoPercentage: "")
//    )
//}


