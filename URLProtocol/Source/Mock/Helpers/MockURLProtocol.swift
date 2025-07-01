//
//  MockURLProtocol.swift
//  URLProtocol
//
//  Created by Aurimas Bavarskis on 01/04/2025.
//

import Foundation

/// `MockURLProtocol` helps to mock URLSession responses.
/// This code is based on the WWDC video on testing https://developer.apple.com/videos/play/wwdc2018/417/
class MockURLProtocol: URLProtocol {
    override class func canInit(with request: URLRequest) -> Bool {
        true
    }

    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        request
    }

    override func startLoading() {
        do {
            let (response, data) = try handle(request)
            self.client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: .notAllowed)
            self.client?.urlProtocol(self, didLoad: data)
            self.client?.urlProtocolDidFinishLoading(self)
        } catch {
            self.client?.urlProtocol(self, didFailWithError: error)
        }
    }

    override func stopLoading() {} // not interested

    // MARK: - Do custom stuff

    private func handle(_ request: URLRequest) throws -> (HTTPURLResponse, Data) {
        guard
            let url = request.url,
            let response = HTTPURLResponse(url: url,
                                           statusCode: 200,
                                           httpVersion: nil,
                                           headerFields: nil)
        else {
            throw AppError(message: "Could not form a URL response")
        }

        let data = try MockProvider.data(for: request)
        return (response, data)
    }
}
