//
//  JSONLoader.swift
//  URLProtocol
//
//  Created by Aurimas Bavarskis on 01/04/2025.
//

import Foundation

class JSONLoader {
    static func object<DataType: Decodable>(filename: String) throws -> DataType {
        let bundle = Bundle(for: MockURLProtocol.self)
        let data: Data = try Data.jsonData(filename: filename, bundle: bundle)
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return try decoder.decode(DataType.self, from: data)
    }
}
