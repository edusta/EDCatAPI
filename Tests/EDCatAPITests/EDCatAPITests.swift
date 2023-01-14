import XCTest
@testable import EDCatAPI

final class EDCatAPITests: XCTestCase {
    private let api = EDCatAPI()

    func testGetRandomImage() async throws {
        let result = try await api.getRandomImage()
        print(result)
    }
}
