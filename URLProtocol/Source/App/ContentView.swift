//
//  ContentView.swift
//  URLProtocol
//
//  Created by Aurimas Bavarskis on 01/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ProductsView(viewModel: ProductsViewModel())
    }
}

#Preview {
    ContentView()
}
