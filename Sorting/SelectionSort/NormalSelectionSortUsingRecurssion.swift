let arr: [Int] = [2, 3, 5, 1, 9, 10, 8, 1]
func selectionSort(arr: [Int], start: Int) -> [Int] {
  var ansArr = arr
  if arr.isEmpty || start >= ansArr.count {
    return ansArr
  }
  var min = ansArr[start]
  var minIndex = start
  for index in start..<ansArr.count {
    if ansArr[index] < min {
      min = ansArr[index]
      minIndex = index
    }
  }
  let temp = ansArr[start]
  ansArr[start] = min
  ansArr[minIndex] = temp
  return selectionSort(arr: ansArr, start: start + 1)
}
print(selectionSort(arr: arr, start: 0))
