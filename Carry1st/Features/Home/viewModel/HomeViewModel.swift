//
//  HomeViewModel.swift
//  Carry1st
//
//  Created by Michael Ossai on 26/11/2024.
//

import Foundation
import Combine

import Combine

class HomeViewModel: ObservableObject {
    @Published var products: [ProductItem] = []
    @Published var errorMessage: String? = nil
    @Published var isLoading: Bool = false
    private var cancellables = Set<AnyCancellable>()
    private let apiService = APIService()
    func loadPosts() {
        isLoading = true
        apiService.fetchProducts(url: AppUrl.products)
            .sink(receiveCompletion: { [weak self] completion in
                switch completion {
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                case .finished:
                    break
                }
            }, receiveValue: { [weak self] products in
                self?.isLoading = false
                self?.products = products
            })
            .store(in: &cancellables)
    }
}
