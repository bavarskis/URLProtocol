//
//  ProductsService.swift
//  URLProtocol
//
//  Created by Aurimas Bavarskis on 01/04/2025.
//

import Foundation

protocol ProductsService {
    func fetchProducts() async throws -> [Product]
}
