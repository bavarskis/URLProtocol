//
//  AppApiEnvironment.swift
//  URLProtocol
//
//  Created by Aurimas Bavarskis on 01/04/2025.
//

import Foundation
import AdyenNetworking

struct AppApiEnvironment: AnyAPIEnvironment {
    var baseURL = URL(string: "https://backend.com")!
}
