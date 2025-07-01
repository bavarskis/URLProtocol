//
//  AppError.swift
//  URLProtocol
//
//  Created by Aurimas Bavarskis on 01/04/2025.
//

import Foundation

struct AppError: Error, LocalizedError {
    let message: String

    init(message: String) {
        self.message = message
    }

    var errorDescription: String? {
        message
    }
}

