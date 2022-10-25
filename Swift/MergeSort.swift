func customMergeSort(array: [Int]) -> [Int] {
    guard array.count > 1 else { return array } // Mark 1
    
    let middlePointer = array.count/2 // Mark 2
    
    let left = customMergeSort(array: Array(array[0..<middlePointer])) // Mark 3
    let right = customMergeSort(array: Array(array[middlePointer..<array.count])) // Mark 3
    return mergeArrays(left,right) // Mark 4
}

func mergeArrays(_ left: [Int],_ right: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    var result = [Int]()
    
    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            result.append(left[leftIndex])
            leftIndex += 1
        } else if left[leftIndex] > right[rightIndex] {
            result.append(right[rightIndex])
            rightIndex += 1
        } else {
            result.append(left[leftIndex])
            result.append(right[rightIndex])
            leftIndex += 1
            rightIndex += 1
        }
    }
    
    while leftIndex < left.count {
        result.append(left[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < right.count {
        result.append(right[rightIndex])
        rightIndex += 1
    }
    
    return result
}
