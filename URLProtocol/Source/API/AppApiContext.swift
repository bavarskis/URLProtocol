//
//  AppApiContext.swift
//  URLProtocol
//
//  Created by Aurimas Bavarskis on 01/04/2025.
//

import Foundation
import AdyenNetworking

struct AppApiContext: AnyAPIContext {
    var environment:any AdyenNetworking.AnyAPIEnvironment = AppApiEnvironment()
    var headers: [String : String] = [:]
    var queryParameters: [URLQueryItem] = []
}
