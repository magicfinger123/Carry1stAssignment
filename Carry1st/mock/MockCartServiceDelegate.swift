//
//  MockCartServiceDelegate.swift
//  Carry1st
//
//  Created by Michael Ossai on 01/12/2024.
//


class MockCartServiceDelegate: CartServiceProtocol {
    var successMessages: [String] = []
    var failureMessages: [String] = []

    func cartActionSuccessful(msg: String) {
        successMessages.append(msg)
    }

    func cartActionFailed(msg: String) {
        failureMessages.append(msg)
    }

    func reset() {
        successMessages = []
        failureMessages = []
    }
}