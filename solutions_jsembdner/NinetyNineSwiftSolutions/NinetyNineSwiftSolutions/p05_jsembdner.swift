
extension List {
	
	public func reverse() {
		var currentItem = self
		var reversed: Array<T> = [currentItem.value]
		while let nextItem = currentItem.nextItem {
			currentItem = nextItem
			reversed = [currentItem.value] + reversed
		}
		self.value = reversed.removeFirst()
		self.nextItem = List(reversed)
	}
	
}
