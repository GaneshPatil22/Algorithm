let arr: [Int] = [1, 2, 3, 5, 6, 7, 4, 8, 9, 0]

func mergeSort(a: [Int]) -> [Int] {
  var arr = a
  if arr.count <= 1 {
    return a
  }
  let mid: Int = arr.count / 2
  let l = mid

  var leftArr: [Int] = []
  var rightArr: [Int] = []
  for i in 0..<arr.count {
    if(i < l) {
      leftArr.append(arr[i])
    } else {
      rightArr.append(arr[i])
    }
  }

  leftArr = mergeSort(a: leftArr)
  rightArr = mergeSort(a: rightArr)
  return merge(l: leftArr, r: rightArr, arr: arr)
}

func merge(l: [Int], r: [Int], arr: [Int]) -> [Int] {
  var arr = arr
  var lIndex = 0
  var rIndex = 0
  var i = 0

  while(lIndex < l.count && rIndex < r.count) {
    if(l[lIndex] < r[rIndex]) {
      arr[i] = l[lIndex]
      lIndex += 1
    } else {
      arr[i] = r[rIndex]
      rIndex += 1
    }
    i += 1
  }

  while(lIndex < l.count) {
    arr[i] = l[lIndex]
    i += 1
    lIndex += 1
  }

  while(rIndex < r.count) {
    arr[i] = r[rIndex]
    i += 1
    rIndex += 1
  }
  return arr
}

print(mergeSort(a: arr))
