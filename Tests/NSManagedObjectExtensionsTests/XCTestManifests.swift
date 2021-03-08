import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(NSManagedObjectExtensionsTests.allTests),
    ]
}
#endif
