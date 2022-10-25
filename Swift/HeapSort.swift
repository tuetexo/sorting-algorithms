extension Heap {
  public mutating func sort() -> [T] {
    for i in (elements.count - 1).stride(through: 1, by: -1) {
      swap(&elements[0], &elements[i])
      shiftDown(index: 0, heapSize: i)
    }
    return elements
  }
}
var h1 = Heap(array: [5, 13, 2, 25, 7, 17, 20, 8, 4], sort: >)
let a1 = h1.sort()

public func heapsort<T>(a: [T], _ sort: (T, T) -> Bool) -> [T] {
  let reverseOrder = { i1, i2 in sort(i2, i1) }
  var h = Heap(array: a, sort: reverseOrder)
  return h.sort()
}
