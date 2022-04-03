//
//  MergeSort.swift
//  
//
//  Created by Jan Sembdner on 02.04.22.
//

internal class MergeSort<Element: Comparable> {
    typealias Element = Element
    
    func sort(_ toSort: Array<Element>) -> Array<Element> {
        let mid = toSort.count / 2
        var left: Array<Element> = Array(toSort[..<mid])
        var right: Array<Element> = Array(toSort[mid...])
        
        if left.count > 1 {
            left = sort(left)
        }
        if right.count > 1 {
            right = sort(right)
        }
        
        return merge(mergeLeft: left, mergeRight: right)
    }
    
    private func merge(mergeLeft: Array<Element>, mergeRight: Array<Element>) -> Array<Element> {
        var merged: Array<Element> = []
        let mergedCount = mergeLeft.count + mergeRight.count
        merged.reserveCapacity(mergedCount)
        var mergeLeftIndex = 0
        var mergeRightIndex = 0
        
        // while there is still something to merge
        while (mergeLeftIndex + mergeRightIndex < mergedCount) {
            // right is empty, add rest of left
            if mergeRightIndex >= mergeRight.count {
                merged.append(mergeLeft[mergeLeftIndex])
                mergeLeftIndex += 1
            // left is empty, add rest of right
            } else if mergeLeftIndex >= mergeLeft.count {
                merged.append(mergeRight[mergeRightIndex])
                mergeRightIndex += 1
            // if left is smaller, add left
            } else if mergeLeft[mergeLeftIndex] < mergeRight[mergeRightIndex] {
                merged.append(mergeLeft[mergeLeftIndex])
                mergeLeftIndex += 1
            // else right is smaller or equal, add right
            } else {
                merged.append(mergeRight[mergeRightIndex])
                mergeRightIndex += 1
            }
        }
        return merged
    }
}
