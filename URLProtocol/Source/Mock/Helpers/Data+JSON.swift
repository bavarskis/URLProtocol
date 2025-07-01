//
//  Data+JSON.swift
//  URLProtocol
//
//  Created by Aurimas Bavarskis on 01/04/2025.
//

import Foundation

extension Data {
    static func jsonData(filename: String, bundle: Bundle = Bundle.main) throws -> Self {
        guard let path = bundle.path(forResource: filename, ofType: "json") else {
            throw AppError(message: "Could not parse JSON")
        }

        return try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
    }
}
