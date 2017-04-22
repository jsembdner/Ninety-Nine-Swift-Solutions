
extension List {
	
	public var last: T {
		if let nextItem = nextItem {
			return nextItem.last
		} else {
			return value
		}
	}
	
}
