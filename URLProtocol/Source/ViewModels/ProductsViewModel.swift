//
//  ProductsViewModel.swift
//  URLProtocol
//
//  Created by Aurimas Bavarskis on 01/04/2025.
//

import SwiftUI

@Observable
final class ProductsViewModel {
    private var productsService: ProductsService = ProductsServiceImpl()
    private(set) var state: ViewState = .loading

    init(productsService: ProductsService = ProductsServiceImpl()) {
        self.productsService = productsService
    }

    func fetchProducts() async {
        do {
            
            let products = try await productsService.fetchProducts()
//            let products = ProductsViewModel.mock
            state = .loaded(products)
        } catch {
            state = .error(error.localizedDescription)
        }
    }
}

extension ProductsViewModel {
    enum ViewState {
        typealias ErrorMessage = String
        case loaded([Product])
        case loading
        case error(ErrorMessage)
    }
}
