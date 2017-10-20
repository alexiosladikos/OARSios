import XCTest
@testable import OARS_mobile

class OARS_mobileTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(OARS_mobile().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
