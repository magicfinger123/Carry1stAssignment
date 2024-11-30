//
//  EnterEmailScreen.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//
import SwiftUI

struct EnterEmailScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var email: String = ""
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
            ScrollView{
                Spacer().frame(height: 10)
                VStack(alignment: .leading, spacing: 0.0){
                    HStack {
                        TxtWrkSB(txt: "Enter email address", size: 28,maxLines: 3).padding(.all, 0.0).frame(width: 200)
                        Spacer()
                    }.padding(.all, 0.0)
                    Spacer().frame(height: 10)
                    TxtWrk(txt: "Give us a valid email address to sign up or log in", size: 12)
                }
                Spacer().frame(height: 50)
                TxtField(icon: "mail", placeholder: "xyz@domain.com", text: $email)
                
                Spacer().frame(height: 10)
                
                TextBtn(title: "Continue")
                
                Spacer().frame(height: 10)
                TermAndPrivacy()
                
               
                Spacer().frame(height: 90)
                OrContinueWith()
                Spacer().frame(height: 20)
                HStack {
                    PlatformCard(title: "Google", icon: "google")
                    PlatformCard(title: "Apple", icon: "apple")
                    PlatformCard(title: "Facebook", icon: "facebook")
                }
                Spacer().frame(height: 20)

            }.padding(.horizontal, 0.0)
            
            
            
            
        }.padding(.horizontal,14)
    }
}

#Preview {
    EnterEmailScreen()
}


