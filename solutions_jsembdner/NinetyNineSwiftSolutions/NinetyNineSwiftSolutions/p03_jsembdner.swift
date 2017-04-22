
extension List {
	
	public subscript(index: Int) -> T? {
		var currentItem = self
		var counter = 0
		while let nextItem = currentItem.nextItem, counter < index {
			counter += 1
			currentItem = nextItem
		}
		if counter == index {
			return currentItem.value
		} else {
			return nil
		}
	}
	
}
