//
//  Product.swift
//  URLProtocol
//
//  Created by Aurimas Bavarskis on 01/04/2025.
//

import Foundation

struct Product: Decodable, Identifiable {
    let id: Int
    let title: String
    let price: Price
    let imageUrl: URL?

    struct Price: Decodable {
        let amount: UInt
        let decimals: UInt
        let currencySymbol: String
    }
}

extension Product {
    var formattedPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = price.currencySymbol
        formatter.minimumFractionDigits = Int(price.decimals)
        formatter.maximumFractionDigits = Int(price.decimals)

        let divisor = pow(10.0, Double(price.decimals))
        let amount = Double(price.amount) / divisor
        return formatter.string(from: NSNumber(value: amount)) ?? "\(price.currencySymbol) \(amount)"
    }
}
