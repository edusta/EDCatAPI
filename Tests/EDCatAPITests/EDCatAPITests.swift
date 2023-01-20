//
//  EDCatAPITests.swift
//
//
//  Created by Engin Deniz Usta on 14.01.23.
//

import XCTest
import Nimble

@testable import EDCatAPI

final class EDCatAPITests: XCTestCase {
    private let api = EDCatAPI()

    func testGetRandomImageURL() async throws {
        let result = try await api.getRandomImageURL()
        expect(result.host) == "cdn2.thecatapi.com"
    }

    func testGetRandomImage() async throws {
        let result = try await api.getRandomImage()
        expect(result).toNot(beNil())
    }
}
