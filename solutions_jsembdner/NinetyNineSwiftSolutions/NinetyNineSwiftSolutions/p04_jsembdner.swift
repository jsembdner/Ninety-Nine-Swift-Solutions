
extension List {
	
	public var length: Int {
		var currentItem = self
		var counter = 1
		while let nextItem = currentItem.nextItem {
			counter += 1
			currentItem = nextItem
		}
		return counter
	}
	
}
