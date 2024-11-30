//
//  AllSetScreen.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//

import SwiftUI

struct AllSetScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var password: String = ""
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
            VStack {
                Image("ok").resizable().frame(width: 91,height: 91)
                Spacer().frame(height: 20)
                TxtWrkSB(txt: "You’re all set!", size: 28)
                Spacer().frame(height: 10)
                TxtWrk(txt: "Your account is all good to go, choose an option below to continue.", size: 14,
                       color: "textSub",
                       alignment: TextAlignment.center
                )
                Spacer().frame(height: 30)
                HStack(alignment: .center) {
                    ExtractedView(title: "Setup your own Store", image:"explore_round")
                    
                    ExtractedView(title: "Explore & purchase", image:"setup_round")
                }
                   
            }
            Spacer()
            
            
        }.padding(.horizontal,16)
    }
}

#Preview {
    AllSetScreen()
}

struct ExtractedView: View {
    var title:String
    var image:String
    var body: some View {
        HStack{
            Image(image).resizable().scaledToFit().frame(width: 50,height: 50)
            TxtWrkSB(txt: title, size: 14,maxLines: 2).frame(width: 96)
        }
        
        .frame(width: 164.0,height: 88)
        .padding(.horizontal, 5.0)
            .background(Color("lightBg")).cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 14)
                    .stroke(Color("textHairline"), lineWidth: 1)
            )
    }
}
