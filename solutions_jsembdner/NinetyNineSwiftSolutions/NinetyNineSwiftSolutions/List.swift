
public class List<T : Equatable>: Equatable {
	var value: T
	var nextItem: List<T>?
	
	public convenience init!(_ values: T...) {
		self.init(Array(values))
	}
	
	init!( _ values: Array<T>) {
		var values = values
		if values.count == 0 {
			return nil
		}
		value = values.removeFirst()
		nextItem = List(values)
	}
	
}

public func == <T : Equatable>(lhs: List<T>, rhs: List<T>) -> Bool {
	return lhs.value == rhs.value && lhs.nextItem == rhs.nextItem
}
