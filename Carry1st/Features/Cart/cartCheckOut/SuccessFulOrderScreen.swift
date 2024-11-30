//
//  SuccessFulOrderScreen.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//

import SwiftUI

struct SuccessFulOrderScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark").resizable().foregroundColor(.black).frame(width: 15,height: 15)
                }
            }
            Spacer()
            
                VStack(spacing: 14.0) {
                    Image("success").resizable().scaledToFit().frame(width: 99,height: 99)
                    
                    TxtWrkSB(txt: "Order Placed Successfully", size:16,alignment: TextAlignment.center)
                TxtWrk(txt: "Your order is being processed. You will be notified when the Vendor accepts. Check your order history for a tracking number", size:14,color: "textSub",maxLines: 10,alignment: TextAlignment.center)
                }
                Spacer()
                HStack{
                    Image(systemName: "arrow.forward").resizable().scaledToFit().foregroundColor(Color("textH")).frame(width: 18,height: 18)
                    TxtWrkSB(txt: "Continue Shopping", size: 16,maxLines: 1)
                }.frame(width: 299,height: 48)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color("textH"), lineWidth: 0.5) // Set border color and
                    )
            Spacer()
               
                
        
            
            
        }.padding(.horizontal,16)
        .background(Color.white)
            .navigationBarHidden(true)
    }
}

#Preview {
    SuccessFulOrderScreen()
}
