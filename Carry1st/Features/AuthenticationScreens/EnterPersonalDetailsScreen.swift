//
//  EnterPersonalDetailsScreen.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//

import SwiftUI

struct EnterPersonalDetailsScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var firstname: String = ""
    @State private var lastname: String = ""
    @State private var phonename: String = ""
    @State private var code: String = ""
    var body: some View {
        VStack{
            NormalBackAndTitleAppBar(title: "", backAction: {
                presentationMode.wrappedValue.dismiss()
            })
            ScrollView{
                Spacer().frame(height: 10)
                VStack(alignment: .leading, spacing: 0.0){
                    HStack {
                        TxtWrkSB(txt: "Enter email personal details", size: 28,maxLines: 2).padding(.all, 0.0).frame(width: 260)
                        Spacer()
                    }.padding(.all, 0.0)
                    Spacer().frame(height: 10)
                    TxtWrk(txt: "You are almost there! Create your Alpha account in minutes to join the shopping train now!", size: 12)
                }
                Spacer().frame(height: 50)
                TxtField(icon: "title", placeholder: "First name", text: $firstname)
                TxtField(icon: "title", placeholder: "Last name", text: $lastname)
                TxtField(icon: "phone", placeholder: "+234", text: $phonename)
                TxtField(icon: "share 1", placeholder: "Refertal code", text: $code)
                
                
                TextBtn(title: "Continue")
            }
        }.padding(.horizontal,16)
    }
}

#Preview {
    EnterPersonalDetailsScreen()
}
