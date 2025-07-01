# URLProtocol Demo — Intercepting and Mocking Network Requests in iOS

This project demonstrates how to use [`URLProtocol`](https://developer.apple.com/documentation/foundation/urlprotocol) to intercept and mock network requests in an iOS app. It's a simple, self-contained example showing how you can:

* Intercept outgoing network traffic
* Mock server responses using local JSON fixtures
* Use `URLProtocol` to improve test reliability for Unit and UI tests
* Compare code-based typed mocks vs. JSON fixture-based mocks

## Why `URLProtocol`?

`URLProtocol` is a powerful (and often overlooked) tool in the iOS SDK that allows you to intercept, modify, or mock network requests at the system level — no external dependencies required. This makes it ideal for testing, debugging, or simulating different server responses in development.

## What's Included

* Example of a custom `URLProtocol` subclass
* Mocking network responses using JSON fixtures
* Simple demonstration of type mismatch detection (e.g., number vs. string in JSON)
* Unit test examples showing how to use `URLProtocol` for isolated testing

## Getting Started

1. Clone this repo
2. Open the `.xcodeproj` file in Xcode
3. Run the app or tests — check the console for intercepted requests and mock responses

## Requirements

* Xcode 14+
* iOS 15+

## Useful Links

* [Apple URLProtocol Documentation](https://developer.apple.com/documentation/foundation/urlprotocol)
* [WWDC Session](https://developer.apple.com/videos/play/wwdc2018/417/)
