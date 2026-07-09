import XCTest
@testable import LanguageServer

final class LanguageServerTests: XCTestCase {
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }
	
	/// A compile-time check to ensure `RequestHandler` and `NotificationHandler`
	/// continue to provide default implementations for every protocol requirement.
	func testRequestHandlerAndNotificationHandlerHaveCompleteDefaults() throws {
		struct MinimalRequestHandler: RequestHandler {
			func internalError(_ error: Error) async {}
		}
	
		struct MinimalNotificationHandler: NotificationHandler {
			func internalError(_ error: Error) async {}
		}
	}
}
