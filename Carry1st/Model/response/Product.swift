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
// MARK: - ProductElement
struct ProductItem: Codable, Identifiable {
    var id: Int
    var name, description: String?
    var price: Double?
    var currencyCode, currencySymbol: String?
    var quantity: Int?
    var imageLocation: String?
    var status: String?
    
    func getProductData(qty: Int)->ProductData{
        return ProductData(id: id,
                           name: name ?? "",
                           price: price ?? 0,
                           currencyCode: currencyCode ?? "",
                           currencySymbol: currencySymbol ?? "",
                           quantity: qty,
                           imageLocation: imageLocation ?? "", maxQty: quantity ?? 1
        )
    }
  
    
}


