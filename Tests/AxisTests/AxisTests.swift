import XCTest
@testable import Axis

final class AxisTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Axis().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
