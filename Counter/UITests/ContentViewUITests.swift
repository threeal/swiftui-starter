import XCTest

nonisolated final class ContentViewUITests: XCTestCase {
  @MainActor func testClickingButtonIncreasesCount() {
    let app = XCUIApplication()
    app.launch()

    XCTAssert(app.staticTexts["Click the button to increase the counter."].exists)
    app.buttons["count is 0"].click()
    XCTAssert(app.buttons["count is 1"].waitForExistence(timeout: 5))
  }
}
