//
//  CartRepository.swift
//  Carry1st
//
//  Created by Michael Ossai on 30/11/2024.
//

import Foundation
import SwiftData

protocol CartRepositoryProtocol {
    func itemDeleted()
    func itemAdded()
    func failedToAddItem()
    func itemAleadyInCart()
    func itemQuantityUpdated()
}

class CartRepository {
    var delegate: CartRepositoryProtocol?
    func addItem(context: ModelContext, product: ProductItem, qty: Int) {
        do {
            let fetchDescriptor = FetchDescriptor<ProductData>(
                predicate: #Predicate { $0.id == product.id }
            )
            let existingProducts = try context.fetch(fetchDescriptor)
            // If a product with the same ID already exists, skip saving
            guard existingProducts.isEmpty else {
                print("Duplicate product detected. Skipping save.")
                delegate?.itemAleadyInCart()
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
            delegate?.itemAdded()
            
        }catch {
            // failed to add item
            delegate?.failedToAddItem()
            
        }
    }
    func deleteItem(context: ModelContext,item: ProductData) {
        
        
    }
    func updateItemQuantity(context: ModelContext, data: ProductData) {
        
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
