import XCTest
@testable import StringExtensionOne

final class StringExtensionOneTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(StringExtensionOne().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
