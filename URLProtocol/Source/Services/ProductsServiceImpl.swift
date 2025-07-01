//
//  ProductsServiceImpl.swift
//  URLProtocol
//
//  Created by Aurimas Bavarskis on 01/04/2025.
//

import Foundation
import AdyenNetworking

final class ProductsServiceImpl: ProductsService {
    private let apiClient: AsyncAPIClientProtocol

    init(apiClient: AsyncAPIClientProtocol = APIClient(apiContext: AppApiContext(), configuration: .mock)) {
        self.apiClient = apiClient
    }

    func fetchProducts() async throws -> [Product] {
        let request = ProductsRequest()
        return try await apiClient.perform(request).responseBody.products
    }
}

extension ProductsServiceImpl {
    struct ProductsRequest: Request {
        typealias ResponseType = Products
        typealias ErrorResponseType = EmptyErrorResponse

        var path: String = "products"
        var counter: UInt = 0
        var headers: [String : String] = [:]
        var queryParameters: [URLQueryItem] = []
        var method: AdyenNetworking.HTTPMethod = .get

        func encode(to encoder: any Encoder) throws {
            //
        }
    }
}
