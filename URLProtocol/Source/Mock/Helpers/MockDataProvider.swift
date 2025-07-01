//
//  MockDataProvider.swift
//  URLProtocol
//
//  Created by Aurimas Bavarskis on 01/04/2025.
//

import Foundation

enum MockProvider {
    static func data(for request: URLRequest) throws -> Data {
        switch request.url?.lastPathComponent {
        case "products":
            try Data.jsonData(filename: "Products")
        default:
            throw AppError(message: "No data provided")
        }
    }
}
