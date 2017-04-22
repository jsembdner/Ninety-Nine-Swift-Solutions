
import XCTest
@testable import NinetyNineSwiftSolutions

class NinetyNineSwiftSolutionsTests: XCTestCase {
	
	var numbers: Array<Int>!
	var list: List<Int>!
	
    override func setUp() {
        super.setUp()
		numbers = Array(1...10)
		list = List.init(numbers)
    }
    
    override func tearDown() {
		
        super.tearDown()
    }
    
    func testP01() {
		XCTAssertEqual(10, list.last)
    }
    
}
