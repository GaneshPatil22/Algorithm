class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        return mergeSort(arr: nums)
    }
    
    func mergeSort(arr: [Int]) -> [Int] {
        if arr.count <= 1 {
            return arr
        }
        let mid: Int = arr.count / 2
        let left = mergeSort(arr: Array(arr[0..<mid]))
        let right = mergeSort(arr: Array(arr[(mid)..<arr.count]))
        return merge(a: left, b: right)
    }
    
    func merge(a: [Int], b: [Int]) -> [Int] {
        let al = a.count
        let bl = b.count
        if al == 0 {
            return b
        }
        if bl == 0 {
            return b
        }
        var ans: [Int] = []
        var aI = 0
        var bI = 0
        while (aI < al && bI < bl) {
            if(a[aI] < b[bI]) {
                ans.append(a[aI])
                aI += 1
            } else {
                ans.append(b[bI])
                bI += 1
            }
        }
        while (aI < al) {
            ans.append(a[aI])
            aI += 1
        }
        while (bI < bl) {
            ans.append(b[bI])
            bI += 1
        }
        return ans
    }
}
