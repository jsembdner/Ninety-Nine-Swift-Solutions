
extension List {
	
	public var pennultimate: T? {
		var currentVal = value
		var currentItem = self
		var preVal: T?
		while let nextItem = currentItem.nextItem {
			preVal = currentVal
			currentVal = nextItem.value
			currentItem = nextItem
		}
		return preVal
	}
	
}
