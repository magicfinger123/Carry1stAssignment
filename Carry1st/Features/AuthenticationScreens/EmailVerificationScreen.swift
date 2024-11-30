//
//  EmailVerificationScreen.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//
import SwiftUI

struct EmailVerificationScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var otp: [String] = Array(repeating: "", count: 6)
       @State private var focusedIndex: Int? = 0
    var body: some View {
        VStack{
            NormalBackAndTitleAppBar(title: "", backAction: {
                presentationMode.wrappedValue.dismiss()
            })
            ScrollView{
                Spacer().frame(height: 10)
                VStack(alignment: .leading, spacing: 0.0){
                    HStack {
                        TxtWrkSB(txt: "Email Verification", size: 28,maxLines: 2).padding(.all, 0.0).frame(width: 190)
                        Spacer()
                    }.padding(.all, 0.0)
                    Spacer().frame(height: 10)
                    TxtWrk(txt: "Please the 6-digits pin sent to jamesotemolu@gmail.com", size: 12)
                }
                Spacer().frame(height: 30)
                
                OTPView()
                
                HStack {
                    Spacer()
                    TxtWrk(txt: "Resend OTP", size: 12,color: "orange00")
                }.padding(.vertical, 5.0)
                
                TextBtn(title: "Verify Email address")
            }
        }.padding(.horizontal,16)
    }
}

#Preview {
    EmailVerificationScreen()
}

struct OTPView: View {
    @State private var otp: [String] = Array(repeating: "", count: 6)
    @FocusState private var focusedField: Int?

    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<6, id: \.self) { index in
                otpTextField(for: index)
            }
        }
        .onAppear {
            focusedField = 0
        }
    }

    @ViewBuilder
    private func otpTextField(for index: Int) -> some View {
        TextField("", text: $otp[index])
            .font(.title)
            .frame(width: 45, height: 45)
            .multilineTextAlignment(.center)
            .keyboardType(.numberPad)
            .background(Color("colorF4"))
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(focusedField == index ? Color("kprimary") : Color("colorF4"), lineWidth: 0.5)
            )
            .onChange(of: otp[index]) { newValue in
                otpDidChange(at: index, newValue: newValue)
            }
            .focused($focusedField, equals: index)
    }

    private func otpDidChange(at index: Int, newValue: String) {
        if newValue.count > 1 {
            otp[index] = String(newValue.prefix(1))
        }
        if newValue.count == 1 {
            if index < 5 {
                focusedField = index + 1
            } else {
                focusedField = nil
                hideKeyboard()
            }
        }
    }

    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

