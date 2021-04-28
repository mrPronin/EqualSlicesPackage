    import XCTest
    @testable import EqualSlicesPackage

    final class EqualSlicesPackageTests: XCTestCase {
        func testTotalSlicesIsZero() {
            let testTotalSlicesIsZero = equalSlices(totalSlices: 0, recipients: 1, perRecipientSlices: 1)
            XCTAssertEqual(testTotalSlicesIsZero, false)
        }
        
        func testRecipientsIsZero() {
            let testRecipientsIsZero = equalSlices(totalSlices: 1, recipients: 0, perRecipientSlices: 1)
            XCTAssertEqual(testRecipientsIsZero, true)
        }
        
        func testPerRecipientSlicesIsZero() {
            let testPerRecipientSlicesIsZero = equalSlices(totalSlices: 1, recipients: 1, perRecipientSlices: 0)
            XCTAssertEqual(testPerRecipientSlicesIsZero, true)
        }
        
        func testNotUseEntirePie() {
            let testNotUseEntirePie = equalSlices(totalSlices: 10, recipients: 5, perRecipientSlices: 2)
            XCTAssertEqual(testNotUseEntirePie, true)
        }
        
        func testNotEnoughSlices() {
            let testNotEnoughSlices = equalSlices(totalSlices: 11, recipients: 5, perRecipientSlices: 3)
            XCTAssertEqual(testNotEnoughSlices, false)
        }
        
        func testExactAmountOfSlices() {
            let testExactAmountOfSlices = equalSlices(totalSlices: 24, recipients: 12, perRecipientSlices: 2)
            XCTAssertEqual(testExactAmountOfSlices, true)
        }
    }
