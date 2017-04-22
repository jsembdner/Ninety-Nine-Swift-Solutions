
public class List<T> {
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
