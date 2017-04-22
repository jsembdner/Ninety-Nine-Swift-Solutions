
import XCTest
@testable import NinetyNineSwiftSolutions

class NinetyNineSwiftSolutionsTests: XCTestCase {
	
	var tenNumList: List<Int>!
	var tenNumListReversed: List<Int>!
	var oneNumList: List<Int>!
	
    override func setUp() {
        super.setUp()
		tenNumList = List.init(Array(1...10))
		tenNumListReversed = List.init(Array(1...10).reversed())
		oneNumList = List.init([1])
    }
    
    override func tearDown() {
		
        super.tearDown()
    }
    
    func testP01() {
		XCTAssertEqual(10, tenNumList.last)
		XCTAssertEqual(1, oneNumList.last)
    }
	
	func testP02() {
		XCTAssertEqual(9, tenNumList.pennultimate)
		XCTAssertEqual(nil, oneNumList.pennultimate)
	}
	
	func testP03() {
		XCTAssertEqual(3, tenNumList[2])
		XCTAssertEqual(1, oneNumList[0])
		
		XCTAssertEqual(nil, tenNumList[-1])
		XCTAssertEqual(nil, oneNumList[1])
	}
	
	func testP04() {
		XCTAssertEqual(10, tenNumList.length)
		XCTAssertEqual(1, oneNumList.length)
	}
	
	func testP05() {
		tenNumList.reverse()
		oneNumList.reverse()
		XCTAssertEqual(tenNumListReversed, tenNumList)
		XCTAssertEqual(List([1]), oneNumList)
	}
    
}
