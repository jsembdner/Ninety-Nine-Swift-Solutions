
import XCTest
@testable import NinetyNineSwiftSolutions

class NinetyNineSwiftSolutionsTests: XCTestCase {
	
	var tenNumList: List<Int>!
	var tenNumListReversed: List<Int>!
	var oneNumList: List<Int>!
	
    override func setUp() {
        super.setUp()
		// List of numbers 1 to 10
		tenNumList = List.init(Array(1...10))
		// Reversed list 10 to 1
		tenNumListReversed = List.init(Array(1...10).reversed())
		// List with only one element
		oneNumList = List.init([1])
    }
    
    override func tearDown() {
		
        super.tearDown()
    }
    
    func testP01() {
		// Test List.last
		XCTAssertEqual(10, tenNumList.last)
		XCTAssertEqual(1, oneNumList.last)
    }
	
	func testP02() {
		// Test List.pennultimate
		XCTAssertEqual(9, tenNumList.pennultimate)
		XCTAssertEqual(nil, oneNumList.pennultimate)
	}
	
	func testP03() {
		// Test List[i]
		XCTAssertEqual(3, tenNumList[2])
		XCTAssertEqual(1, oneNumList[0])
		// Test List[-1] and List[length]
		XCTAssertEqual(nil, tenNumList[-1])
		XCTAssertEqual(nil, oneNumList[1])
	}
	
	func testP04() {
		// Test List.length
		XCTAssertEqual(10, tenNumList.length)
		XCTAssertEqual(1, oneNumList.length)
	}
	
	func testP05() {
		// Test List.reverse()
		tenNumList.reverse()
		oneNumList.reverse()
		XCTAssertEqual(tenNumListReversed, tenNumList)
		XCTAssertEqual(List([1]), oneNumList)
	}
	
	func testP06() {
		// Test List.isPalindrome()
		XCTAssertTrue(List([1]).isPalindrome())
		XCTAssertTrue(List([1,1]).isPalindrome())
		XCTAssertFalse(List([1,2]).isPalindrome())
		XCTAssertFalse(List([2,1]).isPalindrome())
		XCTAssertTrue(List([1,2,2,6,2,2,1]).isPalindrome())
		XCTAssertTrue(List([1,2,2,6,6,2,2,1]).isPalindrome())
		XCTAssertFalse(List([1,2,2,6,3,2,2,1]).isPalindrome())
	}
    
}
