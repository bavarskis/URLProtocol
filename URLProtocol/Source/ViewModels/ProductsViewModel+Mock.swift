//
//  ProductsViewModel+Mock.swift
//  URLProtocol
//
//  Created by Aurimas Bavarskis on 01/04/2025.
//

import Foundation

extension ProductsViewModel {
    static let mock: [Product] = [
        Product(
            id: 1,
            title: "iPhone 15 Pro",
            price: Product.Price(amount: 99999, decimals: 2, currencySymbol: "$"),
            imageUrl: URL(string: "https://example.com/iphone15pro.jpg")
        ),
        Product(
            id: 2,
            title: "MacBook Air M3",
            price: Product.Price(amount: 129999, decimals: 2, currencySymbol: "$"),
            imageUrl: URL(string: "https://example.com/macbookair.jpg")
        ),
        Product(
            id: 3,
            title: "Apple Watch Ultra 2",
            price: Product.Price(amount: 79999, decimals: 2, currencySymbol: "$"),
            imageUrl: URL(string: "https://example.com/applewatchultra2.jpg")
        ),
        Product(
            id: 4,
            title: "AirPods Pro (2nd Gen)",
            price: Product.Price(amount: 24900, decimals: 2, currencySymbol: "$"),
            imageUrl: URL(string: "https://example.com/airpodspro2.jpg")
        ),
        Product(
            id: 5,
            title: "iPad Pro 12.9\" M2",
            price: Product.Price(amount: 109999, decimals: 2, currencySymbol: "$"),
            imageUrl: URL(string: "https://example.com/ipadpro.jpg")
        )
    ]
}
