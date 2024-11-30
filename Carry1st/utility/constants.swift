//
//  constants.swift
//  GIG Alpha
//
//  Created by Olajide Oguns on 11/07/2024.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var image: String
    var price: String
    var addedToCart: Bool
    var addedToFavorite: Bool
    var promoPercentage: String
}



var products: [Product] = [
    Product(name: "Nike Air Jordan 4", description: "Kicks of Lagos", image: "laptop",price: "₦154,900.00",addedToCart: false,addedToFavorite: false,promoPercentage: "-20%"),
    Product(name: "Nike Air Jordan 4", description: "Kicks of Lagos", image: "laptop",price: "₦154,900.00",addedToCart: false,addedToFavorite: false,promoPercentage: ""),
    Product(name: "Nike Air Jordan 4", description: "Kicks of Lagos", image: "laptop",price: "₦154,900.00",addedToCart: false,addedToFavorite: false,promoPercentage: ""),
    Product(name: "Nike Air Jordan 4", description: "Kicks of Lagos", image: "laptop",price: "₦154,900.00",addedToCart: false,addedToFavorite: false,promoPercentage: ""),
    Product(name: "Nike Air Jordan 4", description: "Kicks of Lagos", image: "laptop",price: "₦154,900.00",addedToCart: false,addedToFavorite: false,promoPercentage: ""),
    Product(name: "Nike Air Jordan 4", description: "Kicks of Lagos", image: "laptop",price: "₦154,900.00",addedToCart: false,addedToFavorite: false,promoPercentage: ""),
   ]

struct ProductCategory: Identifiable{
    var id: Int
    var name: String
}

var productCategory:[ProductCategory] = [
    ProductCategory(id: 1,name: "Furniture"),
    ProductCategory(id: 2,name: "Bags"),
    ProductCategory(id: 3,name: "Health"),
    ProductCategory(id: 4,name: "Computer"),
    ProductCategory(id: 5,name: "Electronics"),
    ProductCategory(id: 6,name: "Grocery"),
    ProductCategory(id: 7,name: "Hair wigs"),
    ProductCategory(id: 8,name: "Kitchen"),
    ProductCategory(id: 9,name: "Clothing"),
    ProductCategory(id: 10,name: "Adult Products"),
    ProductCategory(id: 11,name: "Shoes"),
    ProductCategory(id: 12,name: "Phones"),
    ProductCategory(id: 13,name: "Kiddies"),
    
]

func imageName(for categoryName: String) -> String {
    switch categoryName {
    case "Furniture":
        return "furniture_image"
    case "Bags":
        return "bags_image"
    case "Health":
        return "health_image"
    case "Computer":
        return "computer_image"
    case "Electronics":
        return "electronics_image"
    case "Grocery":
        return "grocery_image"
    case "Hair wigs":
        return "hair_wigs_image"
    case "Kitchen":
        return "kitchen_image"
    case "Clothing":
        return "clothing_image"
    case "Adult Products":
        return "adult_products_image"
    case "Shoes":
        return "shoes_image"
    case "Phones":
        return "phones_image"
    case "Kiddies":
        return "kiddies_image"
    default:
        return ""
    }
}

var productImages:[String] = [
    "sam",
    "laptop",
    "chain",
]


let productSizes = ["XS", "S", "M", "L","XL"]
