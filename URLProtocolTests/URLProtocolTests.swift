//
//  URLProtocolTests.swift
//  URLProtocolTests
//
//  Created by Aurimas Bavarskis on 01/04/2025.
//

import Testing
import AdyenNetworking
@testable import URLProtocol

struct URLProtocolTests {
    @Test func test_productsService_shouldReturnFiveObjects() async throws {
        let apiClient = APIClient(apiContext: AppApiContext(), configuration: .mock)
        let sut = ProductsServiceImpl(apiClient: apiClient)

        let products = try await sut.fetchProducts()
        #expect(products.count == 5)
    }

    @Test func test_viewModel_shouldReturnLoadedStateWithFiveObjects() async throws {
        let apiClient = APIClient(apiContext: AppApiContext(), configuration: .mock)
        let service = ProductsServiceImpl(apiClient: apiClient)
        let sut = ProductsViewModel(productsService: service)

        await sut.fetchProducts()

        switch sut.state {
        case .loaded(let products):
            #expect(products.count == 5)
        default:
            Issue.record("Should load 5 objects but returned a different state")
        }
    }
}
