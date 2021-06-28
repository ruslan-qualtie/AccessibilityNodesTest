import XCTest

class AccessibilityNodesTestUITests: XCTestCase {
    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        
        let appWindow = XCUIApplication()/*@START_MENU_TOKEN@*/.windows["AccessibilityNodesTest"]/*[[".windows[\"AccessibilityNodesTest\"]",".windows[\"AccessibilityNodesTest.ContentView<AccessibilityNodesTest.AppViewModel>-1-AppWindow-1\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
        let switchToSecondButton = appWindow/*@START_MENU_TOKEN@*/.groups["first-view"].buttons["Switch to Second"]/*[[".groups[\"first-view\"].buttons[\"Switch to Second\"]",".buttons[\"Switch to Second\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
        let switchToFirstButton = appWindow/*@START_MENU_TOKEN@*/.groups["second-view"].buttons["Switch to First"]/*[[".groups[\"second-view\"].buttons[\"Switch to First\"]",".buttons[\"Switch to First\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
        
        switchToSecondButton.click()
        switchToFirstButton.click()
        switchToSecondButton.click()
        switchToFirstButton.click()
        switchToSecondButton.click()
        switchToFirstButton.click()
        switchToSecondButton.click()
        switchToFirstButton.click()
        switchToSecondButton.click()
    }
}
