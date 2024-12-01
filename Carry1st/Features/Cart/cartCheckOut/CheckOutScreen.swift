//
//  CheckOutScreen.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//

import SwiftUI
import SwiftData

struct CheckOutScreen: View {
    @State private var itemCount: Int = 1
    @State private var couponCode: String = ""
    @Environment(\.presentationMode) var presentationMode
    @Query var tasks: [ProductData]
    @Environment(\.modelContext) var context
    @StateObject private var delegateHandler = CartDelegateHandler()
    var body: some View {
        VStack{
            NormalBackAndTitleAppBar(title: "Checkout", backAction: {
                presentationMode.wrappedValue.dismiss()
            })
            AddressViewWidget(
                destination: AnyView(ChangeAddressScreen()),
              name: "Michael Ossai", address: "1 Sunday Ogunyade Street, Gbagada Express Way, beside Eterna Fuel Station, Gbagada, Lagos 100234, Nigeria"
            )
            HDivider()
            List(tasks) { item in
                       CartItemWidget(
                           count: item.quantity,
                           productItem: item, onQuantityChange: {
                               count in
                               if count < 1 {
                                   context.delete(item)
                                   return
                               }
                               CartService.shared.updateItemQuantity(context: context, data: item, quantity: count)
                           }
                       )
                       .buttonStyle(PlainButtonStyle())
                   }
                   .listStyle(PlainListStyle())
            VStack {
                HStack {
                    HStack {
                        Image("coupon").resizable().scaledToFit().frame(width: 24,height: 24)
                            .foregroundColor(.gray)
                        TextField("Enter coupon code", text: $couponCode)
                            .foregroundColor(Color("color7C"))
                            .font(.custom("WorkSans-Regular", size: 13))
                            .padding(1)
                    }.frame(width:.infinity,height: 48)
                    .padding(.horizontal)
                    .background(Color("textFieldColor"))
                .cornerRadius(8)
                    Spacer()
                    TxtWrkSB(txt: "Submit", size:15,color: "background-color")
                        .frame(width: 116,height: 48).background(Color("kprimary")).cornerRadius(8)
                }.padding(.horizontal,16)
                    .padding(.vertical,10)
                
                
                TotalAndDeliveryText(
                    subTotal:  CartService.shared.calculateSubTotal(tasks: tasks), deliveryFee: "$5.00", total:  CartService.shared.calculateTotal(tasks: tasks)
                )
                NavigationButton(
                    destination: SuccessFulOrderScreen(), action: {
                   print("Button tapped")
                }){
                    IconAndTextBtn(title: "Pay & Ship Now", icons: "cardWhite")
                }
            }
        }.background(Color.white)
            .onAppear {
                CartService.shared.delegate = delegateHandler
            }
            .navigationBarHidden(true)
            .toastView(toast: $delegateHandler.toast)
    }
}

extension CheckOutScreen: CartServiceProtocol {
    func cartActionSuccessful(msg: String) {
        
    }
    
    func cartActionFailed(msg: String) {
        
    }
}
#Preview {
    CheckOutScreen()
}


