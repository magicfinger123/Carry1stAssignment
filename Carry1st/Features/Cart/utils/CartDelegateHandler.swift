//
//  CartDelegateHandler.swift
//  Carry1st
//
//  Created by Michael Ossai on 30/11/2024.
//

import Foundation
import SwiftUI

class CartDelegateHandler: ObservableObject, CartServiceProtocol {
    @Published var message: String = ""
    @Published var showError: Bool = false
    @Published  var toast: Toast? = nil
   
  
    
    func cartActionSuccessful(msg: String) {
        DispatchQueue.main.async {
            self.message = msg
            self.showError = false
            self.toast =  Toast(style: .success, message: msg)
        }
    }
    
    func cartActionFailed(msg: String) {
        DispatchQueue.main.async {
            self.message = msg
            self.showError = true
            self.toast =  Toast(style: .error, message: msg)
         
        }
    }
}
