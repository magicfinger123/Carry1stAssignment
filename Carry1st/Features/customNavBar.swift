//
//  customNavBar.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//
import SwiftUI


struct CustomNavItem: View {
    let index: Int
    @Binding var selectedIndex: Int
    let imageName: String
    let title: String

    var body: some View {
        Button(action: {
            selectedIndex = index
        }) {
            VStack {
                if selectedIndex == index {
                    Rectangle()
                        .fill(Color("kprimary").opacity(0.90))
                        .frame(width: 42,height: 5)
                        .clipShape(
                            .rect(
                                topLeadingRadius: 0,
                                bottomLeadingRadius: 10,
                                bottomTrailingRadius: 10,
                                topTrailingRadius: 0
                            )
                        )
                        //.padding(.bottom, 4)
                } else {
                    Color.clear
                        .frame(height: 5)
                }

                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(selectedIndex == index ? Color("kprimary") : Color("hash"))

                Text(title)
                    .font(.custom("SFProDisplay-Regular", size: 10))
                    .foregroundColor(selectedIndex == index ? Color("kprimary") : Color("hash"))
            
            }
           // .frame(height: 60)
            //.padding(.top, selectedIndex == index ? 2 : 4)
        }
        .frame(maxWidth: .infinity)
    }
}




