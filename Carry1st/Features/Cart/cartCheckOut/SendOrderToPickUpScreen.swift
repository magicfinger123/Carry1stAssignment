//
//  SendOrderToPickUpScreen.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//

import SwiftUI

struct SendOrderToPickUpScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            NormalBackAndTitleAppBar(title: "Change Address", backAction: {
                presentationMode.wrappedValue.dismiss()
            })
            ScrollView{
                
                Image("sad").resizable().scaledToFit().frame(width: 157,height: 157).padding(.vertical,16)
                VStack(spacing: 8.0){
                    TxtWrkSB(txt: "Unfortunately, we are not able to deliver directly to this address",
                             size: 16,alignment: .center)
                    TxtWrk(txt: "Alternatively, you can send the order to any of our pickup shops closes to you.",
                                 size: 14,color: "textSub",alignment: .center)
                    HDivider()
                    
                    TxtWrk(txt: "Choose from these experience centers below;",
                                 size: 13,color: "textSub",alignment: .center)
                    
                    PreviewAddressWidget(title: "GIGL Gbagada Experience Centre", address: "7, Hospital Rd, Ifako, Gbagada, Lagos.")
                    PreviewAddressWidget(title: "GIGL Gbagada Experience Centre", address: "7, Hospital Rd, Ifako, Gbagada, Lagos.")
                    
                    
                }.padding(.horizontal,16)
            

            }//.padding(.horizontal,6)
            
            
            IconAndTextBtn(title: "Send order to pickup shop", icons: "send_small")
           
            
        }.background(Color.white)
            .navigationBarHidden(true)
    }
}

#Preview {
    SendOrderToPickUpScreen()
}


