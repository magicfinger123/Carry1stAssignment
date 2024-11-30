//
//  CartUtils.swift
//  Carry1st
//
//  Created by Michael Ossai on 30/11/2024.
//


import Foundation
import SwiftData

class CartUtils {
   static   func updateCounts(context: ModelContext, data: ProductData, quantity: Int) {
        data.quantity = quantity
        try? context.save()
    }
    static  func calculateSubTotal(tasks: [ProductData]) -> String {
        let total = tasks.reduce(0) { $0 + ($1.price * Double($1.quantity)) }
        return setAmountString(amountValue: total, isoCodeStr: "USD")//"\(total)"
    }
    static  func calculateTotal(tasks: [ProductData]) -> String {
        let deliveryFee = 5.00
        let total = tasks.reduce(0) {
            $0 + ($1.price * Double($1.quantity))
        } + deliveryFee
        return setAmountString(amountValue: total, isoCodeStr: "USD")
    }
}
