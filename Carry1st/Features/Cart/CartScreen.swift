//
//  CartScreen.swift
//  Carry1st Assignment
//
//  Created by Ossai Mike on 26/11/2024.
//

import SwiftUI
import SwiftData

struct CartScreen: View {
    @State private var itemCounts: Int = 1
    @Query var tasks: [ProductData]
    @Environment(\.modelContext) var context
    @StateObject private var delegateHandler = CartDelegateHandler()
    var body: some View {
        VStack{
            TxtWrkSB(txt: "Shopping Cart", size:15).frame(width: 300,height: 42)
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
                TotalAndDeliveryText(
                    subTotal: CartService.shared.calculateSubTotal(tasks: tasks), deliveryFee: "$5.00", total:  CartService.shared.calculateTotal(tasks: tasks)
                )
                NavigationLink(destination: CheckOutScreen()) {
                    IconAndTextBtn(title: "Proceed to Checkout", icons: "cardWhite")
                }
            }
        }.onAppear {
            CartService.shared.delegate = delegateHandler
        }
        .toastView(toast: $delegateHandler.toast)
    }
}

#Preview {
    CartScreen()
}



