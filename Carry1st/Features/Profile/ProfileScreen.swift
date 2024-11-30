//
//  ProfileScreen.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//

import SwiftUI

struct ProfileScreen: View {
    var body: some View {
        VStack(alignment: .leading){
            Spacer().frame(height: 10)
            TxtWrkSB(txt: "My Profile", size: 28)
            Spacer().frame(height: 10)
            ProfileInfo(
                twoTxt: "OM",
                Name: "Ossai Michael",
                email: "ossaimike8@gmail.com"
            )
            Rectangle()
                .fill(Color.gray.opacity(0.25))
                .frame(height: 0.1)
                           .padding(.vertical, 12)
            
            ScrollView(showsIndicators: false) {
                
                ProfileOption(title:"My Details",icon: "pProfile")
                ProfileOption(title:"My Orders",icon: "pOrders")
                ProfileOption(title:"Liked Items",icon: "pLike")
                ProfileOption(title:"Address Book",icon: "pAddress")
                ProfileOption(title:"Payment & Subscription",icon: "pCard")
                ProfileOption(title:"Referrals & Rewards",icon: "pRefer")
                
                
            }
            Rectangle()
                .fill(Color.gray.opacity(0.25))
                .frame(height: 0.5)
                           .padding(.vertical, 12)
            HStack{
                Image("exit").resizable().scaledToFit().frame(width: 24,height: 24)
                Spacer().frame(width: 10)
                TxtWrk(txt:"Exit Carry1st",size:14,color:"brandFail")
            }.padding(.horizontal,16)
            Spacer().frame(height: 60)
            
            
        }.padding(.horizontal,16)
    }
}

#Preview {
    ProfileScreen()
}


