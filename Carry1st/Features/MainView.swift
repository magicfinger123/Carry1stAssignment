//
//  ContentView.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//

import SwiftUI

struct MainView: View {
    @State private var selectedIndex: Int = 0
    var body: some View {
        NavigationView{
            VStack {
                if selectedIndex == 0 {
                    HomeScreen()
                } else if selectedIndex == 1 {
                    SearchScreen()
                } else if selectedIndex == 2 {
                    ProfileScreen()
                } else if selectedIndex == 3 {
                    CartScreen()
                } 
                Spacer().frame(height: 0)
                CustomBottomNavigationBar(selectedIndex: $selectedIndex)
            }.background(Color(.white).edgesIgnoringSafeArea(.all)).ignoresSafeArea(.keyboard)
        }
    }
}

#Preview {
    MainView()
}

struct CustomBottomNavigationBar: View {
    @Binding var selectedIndex: Int

    var body: some View {
        HStack {
            CustomNavItem(index: 0, selectedIndex: $selectedIndex, imageName: "home_icon", title: "Home")
            CustomNavItem(index: 1, selectedIndex: $selectedIndex, imageName: "search_icon", title: "Search")
            CustomNavItem(index: 2, selectedIndex: $selectedIndex, imageName: "profile_icon", title: "Profie")
            CustomNavItem(index: 3, selectedIndex: $selectedIndex, imageName: "cart_icon", title: "Cart")
//            CustomNavItem(index: 4, selectedIndex: $selectedIndex, imageName: "sell_icon", title: "Sell")
        }
        //.padding()
        .frame(height: 50)
        .background(Color("colorF9").opacity(0.94))
        .overlay(
                    Rectangle()
                        .fill(Color("kprimary").opacity(0.30))
                        .frame(height: 0.40),
                    alignment: .top
                )
       
    }
}
