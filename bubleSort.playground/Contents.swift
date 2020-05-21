import UIKit

func bubbleSort<T: Comparable>(with array: inout [T]) -> [T] {
    for i in 1..<array.count {
        for j in 0..<array.count-i where array[j] > array[j+1] {
            array.swapAt(j, j+1)
        }
    }
    return array
}

var intArray = [8, 3, 5, 10, 4, -1, 17, 3, 18, 10]
print(bubbleSort(with: &intArray))


