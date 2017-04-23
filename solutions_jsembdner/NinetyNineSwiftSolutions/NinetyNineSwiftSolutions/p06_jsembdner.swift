
extension List {
	
	public func isPalindrome() -> Bool {
		let reversedCopy = List(self)
		reversedCopy.reverse()
		return self == reversedCopy
	}
	
}
