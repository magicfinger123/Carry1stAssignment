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
    @Environment(\.modelContext) var context
    @StateObject private var delegateHandler = CartDelegateHandler()

    let productColors: [Color] = [.red, .blue, .green, .yellow, .purple,.black,.gray]
    var body: some View {
        VStack {
            ProductAPPBar(backTap: {presentationMode.wrappedValue.dismiss()})
            Spacer().frame(height: 10)
            
            ScrollView(showsIndicators: true) {
                ProductImageWidget(selection: selection, image: details.imageLocation ?? "")
                productInfo(
                    code: "", name: details.name ?? "", amount: setAmountString(amountValue: details.price ?? 0, isoCodeStr: details.currencyCode ?? ""), condition: "New")
                ColorSelectionView(selectedColor: $selectedColor, colors: productColors)
                SizeSelectionView(selectedSize: $selectedSize, sizes: productSizes)
                ProductDescription( description: details.description ?? "")
                
            }//scroll view
            HStack {
                CounterBtn(count: $itemCount, minValue: 0, maxValue: 100000000000)
                AddToCartBtn(tap: {
                    CartService.shared.addItem(context: context, product: details, qty: itemCount)
                })
            }
            Spacer().frame(height: 10)
            NavigationLink(destination: CheckOutScreen(isBuyNow: true, buyNowData: details.getProductData(qty: itemCount))) {
                IconAndTextBtn(title: "Buy Now", icons: "cardWhite")
            }
            .padding(.all, 16.0)
            
        }.background(Color.white)
            .navigationBarHidden(true)
            .onAppear{
                CartService.shared.delegate = delegateHandler
            }
            .toastView(toast: $delegateHandler.toast)
        
    }
}


