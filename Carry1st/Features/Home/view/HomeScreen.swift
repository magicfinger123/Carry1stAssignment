//
//  HomeScreen.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//

import SwiftUI


struct HomeScreen: View {
    @StateObject private var viewModel = HomeViewModel()
    @State private var searchText: String = ""
    @State private var selection = 0
    @Environment(\.modelContext) var context
    @StateObject private var delegateHandler = CartDelegateHandler()
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    
    var body: some View {
        VStack {
            CustomSearchAppBar(searchText: $searchText)
            ScrollView(showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 6) {
                        NavigationButton(
                            destination: EnterEmailScreen(), action: {
                                print("Button tapped")
                            }) {
                                HorizontalButton(imageName: "login", title: "Sign in")
                            }
                        
                        HorizontalButton(imageName: "diamond", title: "Deals")
                        HorizontalButton(imageName: "category", title: "Categories")
                        HorizontalButton(imageName: "love", title: "Saved")
                        HorizontalButton(imageName: "sell_icon", title: "Sell")
                    }
                    .padding([.top,.bottom], 16.0)
                }
                
                SliderView(selection:selection)
                if viewModel.isLoading {
                    SkeletonView()
                } else {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(viewModel.products) { product in
                            NavigationLink(destination: ProductDetailsScreen(details: product)) {
                                ProductItemView(product: product, onAddToCart: {
                                    CartService.shared.addItem(context: context, product: product, qty: 1)
                                })
                            }
                        }
                    }
                }
            }.padding(.horizontal, 16.0)
        }.onAppear{
            CartService.shared.delegate = delegateHandler
            viewModel.loadPosts()
        }
    }
}

#Preview {
    HomeScreen()
    
}


//workSansSemiBold.ttf









