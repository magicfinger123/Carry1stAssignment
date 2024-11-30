//
//  Product.swift
//  Carry1st
//
//  Created by Michael Ossai on 26/11/2024.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let product = try? JSONDecoder().decode(Product.self, from: jsonData)

import Foundation
import SwiftData

@Model
class ProductData: Identifiable {
    var id: Int
    var name: String
    var price: Double
    var currencyCode: String
    var currencySymbol: String
    var maxQty: Int
    var quantity: Int // Allows two-way binding
    var imageLocation: String

    init(id: Int, name: String, price: Double, currencyCode: String, currencySymbol: String, quantity: Int, imageLocation: String, maxQty: Int) {
        self.id = id
        self.name = name
        self.price = price
        self.currencyCode = currencyCode
        self.currencySymbol = currencySymbol
        self.quantity = quantity
        self.maxQty = maxQty
        self.imageLocation = imageLocation
    }
}
