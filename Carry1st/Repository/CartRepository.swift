//
//  CartRepository.swift
//  Carry1st
//
//  Created by Michael Ossai on 30/11/2024.
//

import Foundation
import SwiftData

protocol CartServiceProtocol {
    func cartActionSuccessful(msg: String)
    func cartActionFailed(msg: String)
}

class CartService {
    // Shared singleton instance
    static let shared = CartService()
    
    
    // Private initializer to prevent instantiation from outside
    private init() {}
    
    var delegate: CartServiceProtocol?
    func addItem(context: ModelContext, product: ProductItem, qty: Int) {
        do {
            let fetchDescriptor = FetchDescriptor<ProductData>(
                predicate: #Predicate { $0.id == product.id }
            )
            print("Fetching with descriptor: \(fetchDescriptor)") 
            let existingProducts = try context.fetch(fetchDescriptor)
            // If a product with the same ID already exists, skip saving
            guard existingProducts.isEmpty else {
                print("Duplicate product detected. Skipping save.")
                delegate?.cartActionFailed(msg: "item already exist in cart")
                return
            }
            // Create and save a new product
            let newProduct = ProductData(
                id: product.id,
                name: product.name ?? "",
                price: product.price ?? 0,
                currencyCode: product.currencyCode ?? "",
                currencySymbol: product.currencySymbol ?? "",
                quantity: qty,
                imageLocation: product.imageLocation ?? "", maxQty:product.quantity ?? 0
            )
            
            context.insert(newProduct)
            try context.save()
            delegate?.cartActionSuccessful(msg: "added item successful")
            
        }catch {
            delegate?.cartActionFailed(msg: "Failed to add item to cart")
        }
    }
    func deleteItem(context: ModelContext,item: ProductData) {
        context.delete(item )
        delegate?.cartActionSuccessful(msg: "deleted item successful")
    }
    func clearCart(context: ModelContext) {
        do {
            try context.delete(model: ProductData.self )
          //  delegate?.cartActionSuccessful(msg: "deleted item successful")
        }catch {
            // delegate?.cartActionFailed(msg: "Failed to delete item")
        }
    }
    func updateItemQuantity(
        context: ModelContext,
        data: ProductData,
        quantity: Int
    ) {
        data.quantity = quantity
        do {
            try context.save()
            delegate?.cartActionSuccessful(msg: "Update successful")
        }catch {
            delegate?.cartActionFailed(msg: "Failed to update item")
        }
    }
    func updateCounts(context: ModelContext, data: ProductData, quantity: Int) {
        data.quantity = quantity
        try? context.save()
    }
    
    func calculateSubTotal(tasks: [ProductData]) -> String {
        let total = tasks.reduce(0) { $0 + ($1.price * Double($1.quantity)) }
        return setAmountString(amountValue: total, isoCodeStr: "USD")//"\(total)"
    }
    func calculateTotal(tasks: [ProductData]) -> String {
        let deliveryFee = 5.00
        let total = tasks.reduce(0) {
            $0 + ($1.price * Double($1.quantity))
        } + deliveryFee
        return setAmountString(amountValue: total, isoCodeStr: "USD")
    }
    func updateCounts(context: ModelContext, data: ProductData, quantity: Int) {
        data.quantity = quantity
        try? context.save()
    }
    func calculateSubTotal(tasks: [ProductData]) -> String {
        let total = tasks.reduce(0) { $0 + ($1.price * Double($1.quantity)) }
        return setAmountString(amountValue: total, isoCodeStr: "USD")//"\(total)"
    }
    func calculateTotal(tasks: [ProductData]) -> String {
        let deliveryFee = 5.00
        let total = tasks.reduce(0) {
            $0 + ($1.price * Double($1.quantity))
        } + deliveryFee
        return setAmountString(amountValue: total, isoCodeStr: "USD")
    }
}
