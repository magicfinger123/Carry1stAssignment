//
//  ChangeAddressScreen.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//

import SwiftUI

struct ChangeAddressScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var address: String = ""
    var body: some View {
        VStack{
            
            NormalBackAndTitleAppBar(title: "Checkout", backAction: {
                presentationMode.wrappedValue.dismiss()
            })
            ScrollView{
                AddressViewWidget2(
                    name: "James Otemolu", address: "1 Sunday Ogunyade Street, Gbagada Express Way, beside Eterna Fuel Station, Gbagada, Lagos 100234, Nigeria"
                )
                HDivider()
                HStack {
                    Image("location").resizable().scaledToFit().frame(width: 24,height: 24)
                        .foregroundColor(.gray)
                    TextField("Enter coupon code", text: $address)
                        .foregroundColor(Color("color7C"))
                        .font(.custom("WorkSans-Regular", size: 13))
                        .padding(1)
                }.frame(width:.infinity,height: 48)
                .padding(.horizontal)
                .background(Color("textFieldColor"))
                .cornerRadius(8).padding(.horizontal,16)
            }//.padding(.horizontal,6)
            
            
            IconAndTextBtn(title: "Save address", icons: "save_white")
           
            
        }.background(Color.white)
            .navigationBarHidden(true)
    }
}

#Preview {
    ChangeAddressScreen()
}
