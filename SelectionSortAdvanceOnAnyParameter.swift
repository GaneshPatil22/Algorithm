// Advance Selection Sort sort on any parameter
extension Array {
  
  mutating func selectionSort(start: Int, compare: ((Element, Element) -> (Bool))) {
    if self.isEmpty || start >= self.count {
      return
    }
    var min = self[start]
    var minIndex = start
    for index in start..<self.count {
      if compare(min, self[index]) {
        min = self[index]
        minIndex = index
      }
    }
    let temp = self[start]
    self[start] = min
    self[minIndex] = temp
    selectionSort(start: start + 1, compare: compare)
  }
}
var arr: [Int] = [2, 3, 5, 1, 9, 10, 8, 1]
arr.selectionSort(start: 0) { $0 > $1 }
print(arr)

struct Person {
  let name: String
  let age: Int
}

var persons = [Person(name: "aakash", age: 12),
               Person(name: "aman", age: 10),
               Person(name: "pradeep", age: 12),
               Person(name: "ganesh", age: 14),
               Person(name: "aman", age: 11),
               Person(name: "prakash", age: 9)]

persons.selectionSort(start: 0) { $0.name > $1.name }
print(persons)
persons.selectionSort(start: 0) { $0.age > $1.age }
print(persons)
