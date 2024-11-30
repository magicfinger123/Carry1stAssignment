//
//  CartDelegateHandler.swift
//  Carry1st
//
//  Created by Michael Ossai on 30/11/2024.
//

import Foundation

class CartDelegateHandler: ObservableObject, CartServiceProtocol {
    @Published var message: String = ""
    @Published var showError: Bool = false
    
    func cartActionSuccessful(msg: String) {
        DispatchQueue.main.async {
            self.message = msg
            self.showError = false
        }
    }
    
    func cartActionFailed(msg: String) {
        DispatchQueue.main.async {
            self.message = msg
            self.showError = true
        }
    }
}
