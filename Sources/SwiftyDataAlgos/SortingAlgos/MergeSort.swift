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
        var mergeLeft = mergeLeft
        var mergeRight = mergeRight
        while (!mergeLeft.isEmpty || !mergeRight.isEmpty) {
            if mergeLeft.isEmpty {
                merged.append(mergeRight[0])
                mergeRight.removeFirst()
            } else if mergeRight.isEmpty {
                merged.append(mergeLeft[0])
                mergeLeft.removeFirst()
            } else if mergeLeft[0] < mergeRight[0] {
                merged.append(mergeLeft[0])
                mergeLeft.removeFirst()
            } else {
                merged.append(mergeRight[0])
                mergeRight.removeFirst()
            }
        }
        return merged
    }
}
