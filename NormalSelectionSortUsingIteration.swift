// Normal Selection sort using iteration

let arr: [Int] = [2, 3, 5, 1, 9, 10, 8, 1]
func selectionSort(arr: [Int]) {
  var ansArr = arr
  for counter in 0..<ansArr.count {
    var min = ansArr[counter]
    var minIndex = counter
    for index in counter..<ansArr.count {
      if ansArr[index] < min {
        min = ansArr[index]
        minIndex = index
      }
    }
    let temp = ansArr[counter]
    ansArr[counter] = min
    ansArr[minIndex] = temp
  }
  print(ansArr)
}
selectionSort(arr: arr)
