//
//  SelectedCategoryScreen.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//
import SwiftUI

struct SelectedCategoryScreen: View {
    var category: ProductCategory
    @StateObject private var viewModel = HomeViewModel()
    @State private var searchText: String = ""
    @Environment(\.presentationMode) var presentationMode
    let columns = [
           GridItem(.flexible()),
           GridItem(.flexible()),
//           GridItem(.flexible()),
           
       ]
    var body: some View {
        VStack {
          CustomSearchAppBar2(searchText: $searchText)
            BackAndTitle(title: category.name, backAction: {
                presentationMode.wrappedValue.dismiss()
            })
            
            ScrollView(showsIndicators: false) {
         
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(viewModel.products) { product in
                        ProductItemView(product: product)
                    }
                }
            }.padding(.horizontal, 16.0)
      
            Spacer()
        }.background(Color.white)
        .navigationBarHidden(true)
    }
}

#Preview {
    SelectedCategoryScreen(category: ProductCategory.init(id: 1, name: "ss"))
}



