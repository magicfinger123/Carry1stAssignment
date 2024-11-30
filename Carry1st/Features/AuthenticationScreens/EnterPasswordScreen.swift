//
//  EnterPasswordScreen.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//

import SwiftUI

struct EnterPasswordScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var password: String = ""
    var body: some View {
        VStack{
            NormalBackAndTitleAppBar(title: "", backAction: {
                presentationMode.wrappedValue.dismiss()
            })
            ScrollView{
                Spacer().frame(height: 10)
                VStack(alignment: .leading, spacing: 0.0){
                    HStack {
                        TxtWrkSB(txt: "Enter email password", size: 28,maxLines: 3).padding(.all, 0.0).frame(width: 200)
                        Spacer()
                    }.padding(.all, 0.0)
                    Spacer().frame(height: 10)
                    HStack {
                        Image("lock").resizable().scaledToFit().frame(width: 16,height: 16)
                        TxtWrk(txt: "jamesotemolu@gmail.com", size: 12)
                        Text("Not you?")
                            .font(.custom("WorkSans-Regular", size: 12))
                                .foregroundColor(Color("orange00"))
                                .italic()
                        
                    }
                }
                Spacer().frame(height: 50)
                TxtField(icon: "passkey", placeholder: "Enter password", text: $password,obscure: true)
                
                HStack {
                    Spacer()
                    TxtWrk(txt: "Forgot password?", size: 12,color: "orange00")
                }.padding(.vertical, 5.0)
                
                TextBtn(title: "Sign in")
            }
        }.padding(.horizontal,16)
    }
}

#Preview {
    EnterPasswordScreen()
}
