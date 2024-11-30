//
//  ApiServiceTest.swift
//  Carry1stTests
//
//  Created by Michael Ossai on 26/11/2024.
//

import Testing
import XCTest
import Combine
@testable import Carry1st

final class APIServiceTests: XCTestCase {
    
    var apiService: APIService!
    var cancellables: Set<AnyCancellable>!

    override func setUp() {
        super.setUp()
        apiService = APIService()
        cancellables = []
    }

    override func tearDown() {
        apiService = nil
        cancellables = nil
        super.tearDown()
    }

    func testFetchProducts() {
        // Expectation for asynchronous code
        let expectation = XCTestExpectation(description: "Fetch products from API")
        
        // Call the API method
        apiService.fetchProducts(url: AppUrl.products)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    XCTFail("API call failed with error: \(error)")
                }
            }, receiveValue: { (products: [ProductItem]) in
                // Assertions
                XCTAssertEqual(products.count, 9, "Expected 9 products but got \(products.count)")
                XCTAssertEqual(products[0].name, "10 Lives", "First product name does not match")
                XCTAssertEqual(products[0].price, 1, "First product price does not match")
                XCTAssertEqual(products[0].status, "ACTIVE", "First product status does not match")
                expectation.fulfill()
            })
            .store(in: &cancellables)
        
        // Wait for expectations
        wait(for: [expectation], timeout: 5.0)
    }
}
