//
//  SearchScreen.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//

import SwiftUI

struct SearchScreen: View {
    @State private var searchText: String = ""
    let columns = [
           GridItem(.flexible()),
           GridItem(.flexible()),
           GridItem(.flexible()),
           
       ]
    var body: some View {
//        NavigationView{
            VStack {
                CustomSearchAppBar2(searchText: $searchText)
                HStack {
                    TxtWrk(txt: "Search by Category", size: 16)
                    Spacer()
                }
                .padding([.top, .leading, .bottom], 9.0)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                ScrollView(showsIndicators: false) {
                    
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(productCategory) { productCategory in
                            NavigationLink(destination: SelectedCategoryScreen(category: productCategory)) {
                                CategoryCard(category: productCategory)
                            }
                        }
                    }
                }.padding(.horizontal, 16.0)
                
//                Spacer()
            }.background(Color.white) // Set background color here
                .navigationBarTitle("") // Empty title to remove default large title
                .navigationBarHidden(true)
        }
   // }
}

#Preview {
    SearchScreen()
}


