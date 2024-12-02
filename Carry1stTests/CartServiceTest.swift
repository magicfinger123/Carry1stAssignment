//
//  CartServiceTest.swift
//  Carry1stTests
//
//  Created by Michael Ossai on 26/11/2024.
//

import Testing

import XCTest
import SwiftData
@testable import Carry1st


final class CartServiceTests: XCTestCase {
//    var cartService: CartService!
//    var mockDelegate: MockCartServiceDelegate!
//    var modelContext: ModelContext!
//    var sharedModelContainer: ModelContainer! // Replace with your in-memory context implementation
//    let product = ProductItem(
//        id: 1,
//        name: "Test Product",
//        description: "Description",
//        price: 10.0,
//        currencyCode: "USD",
//        currencySymbol: "$",
//        quantity: 10,
//        imageLocation: "image.png",
//        status: "available"
//    )
//    let product2 = ProductItem(
//        id: 2,
//        name: "Test Product",
//        description: "Description",
//        price: 20.0,
//        currencyCode: "USD",
//        currencySymbol: "$",
//        quantity: 2,
//        imageLocation: "image.png",
//        status: "available"
//    )
//    @MainActor
//    override func setUp() {
//        super.setUp()
//        cartService = CartService.shared
//        mockDelegate = MockCartServiceDelegate()
//        cartService.delegate = mockDelegate
//        sharedModelContainer =   {
//            let schema = Schema([
//                ProductData.self,
//            ])
//            let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
//            
//            do {
//                return try ModelContainer(for: schema, configurations: [modelConfiguration])
//            } catch {
//                fatalError("Could not create ModelContainer: \(error)")
//            }
//        }()
//        let mockContext = sharedModelContainer.mainContext
//        modelContext = mockContext // Custom in-memory SwiftData context
//    }
//    override func tearDown() {
//        cartService = nil
//        mockDelegate = nil
//        modelContext = nil
//        super.tearDown()
//    }
//    
//    func testAddItemSuccessfully() {
//        guard let modelContext = modelContext else {
//            XCTFail("ModelContext is not initialized")
//            return
//        }
//        cartService.clearCart(context: modelContext)
//        // Act
//        cartService.addItem(context: modelContext, product: product, qty: 3)
//        
//        // Assert
//        let fetchDescriptor = FetchDescriptor<ProductData>(predicate: #Predicate { $0.id == 1 })
//        let products = try? modelContext.fetch(fetchDescriptor)
//        XCTAssertEqual(products?.count, 1)
//        XCTAssertEqual(products?.first?.quantity, 3)
//        XCTAssertEqual(mockDelegate.successMessages.first, "added item successful")
//        XCTAssertTrue(mockDelegate.failureMessages.isEmpty)
//    }
//    func testAddDuplicateItem() {
//        guard let modelContext = modelContext else {
//            XCTFail("ModelContext is not initialized")
//            return
//        }
//        // clear cart first
//        cartService.clearCart(context: modelContext)
//        cartService.addItem(context: modelContext, product: product, qty: 3)
//        
//        // Act
//        cartService.addItem(context: modelContext, product: product, qty: 2)
//        
//        // Assert
//        XCTAssertEqual(mockDelegate.failureMessages.first, "item already exist in cart")
//        XCTAssertEqual(mockDelegate.successMessages.count, 1) // Only the first add should succeed
//    }
//    
//    func testDeleteItem() {
//        guard let modelContext = modelContext else {
//            XCTFail("ModelContext is not initialized")
//            return
//        }
//        // clear cart first
//        cartService.clearCart(context: modelContext)
//        cartService.addItem(context: modelContext, product: product, qty: 3)
//        let item = try? modelContext.fetch(FetchDescriptor<ProductData>()).first
//        
//        // Act
//        cartService.deleteItem(context: modelContext, item: item!)
//        
//        // Assert
//        let products = try? modelContext.fetch(FetchDescriptor<ProductData>())
//        XCTAssertEqual(products?.count, 0)
//        XCTAssertEqual(mockDelegate.successMessages.last, "deleted item successful")
//    }
//    func testUpdateItemQuantity() {
//        guard let modelContext = modelContext else {
//            XCTFail("ModelContext is not initialized")
//            return
//        }
//        cartService.addItem(context: modelContext, product: product, qty: 3)
//        let item = try? modelContext.fetch(FetchDescriptor<ProductData>()).first
//        // Act
//        cartService.updateItemQuantity(context: modelContext, data: item!, quantity: 5)
//        
//        // Assert
//        XCTAssertEqual(item?.quantity, 5)
//        XCTAssertEqual(mockDelegate.successMessages.last, "Update successful")
//    }
//    
//    func testCalculateSubTotal() {
//        guard let modelContext = modelContext else {
//            XCTFail("ModelContext is not initialized")
//            return
//        }
//        cartService.clearCart(context: modelContext)
//        cartService.addItem(context: modelContext, product: product, qty: 3)
//        cartService.addItem(context: modelContext, product: product2, qty: 2)
//        let tasks = try? modelContext.fetch(FetchDescriptor<ProductData>())
//        
//        // Act
//        let subtotal = cartService.calculateSubTotal(tasks: tasks!)
//        print("subtotal: \(subtotal)")
//        // Assert
//        XCTAssertEqual(subtotal, "US$70.00")
//    }
//    
//    func testCalculateTotal() {
//        guard let modelContext = modelContext else {
//            XCTFail("ModelContext is not initialized")
//            return
//        }
//        cartService.clearCart(context: modelContext)
//        cartService.addItem(context: modelContext, product: product, qty: 3)
//        cartService.addItem(context: modelContext, product: product2, qty: 2)
//        let tasks = try? modelContext.fetch(FetchDescriptor<ProductData>())
//        
//        // Act
//        let total = cartService.calculateTotal(tasks: tasks!)
//        print("total: \(total)")
//        
//        // Assert
//        XCTAssertEqual(total, "US$75.00") // $70 subtotal + $5 delivery fee
//    }
}
