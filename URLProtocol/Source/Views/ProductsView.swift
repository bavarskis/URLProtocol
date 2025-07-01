//
//  ProductsView.swift
//  URLProtocol
//
//  Created by Aurimas Bavarskis on 01/04/2025.
//

import SwiftUI

struct ProductsView: View {
    @State var viewModel: ProductsViewModel

    var body: some View {
        Group {
            switch viewModel.state {
            case .loaded(let products):
                productsView(products: products)
            case .loading:
                ProgressView()
            case .error(let errorMessage):
                Text("Error occured: \(errorMessage)")
            }
        }
        .task {
            await viewModel.fetchProducts()
        }
    }

    func productsView(products: [Product]) -> some View {
        ScrollView {
            ForEach(products) { product in
                VStack(spacing: 10) {
                    Spacer()

                    HStack(spacing: 10) {
                        Text(product.title)

                        Spacer()
                        Text(product.formattedPrice)
                    }
                    .padding(10)
                }
                .frame(minHeight: 200)
                .background(.teal)
                .padding(10)
            }
        }
    }
}
