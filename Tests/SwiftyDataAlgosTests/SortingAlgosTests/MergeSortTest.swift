//
//  MergeSortTest.swift
//  
//
//  Created by Jan Sembdner on 02.04.22.
//

import XCTest
@testable import SwiftyDataAlgos

final class MergeSortTests: XCTestCase {
    let notSortedNumericalArrays =
    [
        [],
        [1],
        [5,1],
        [1,2,3],
        [2,1,3],
        [7,7,7],
        [2,1,3,6,9,7,2,8],
        [-2,-5]
    ]
    
    let sortedNumericalArrays =
    [
        [],
        [1],
        [1,5],
        [1,2,3],
        [1,2,3],
        [7,7,7],
        [1,2,2,3,6,7,8,9],
        [-5,-2]
    ]
    
    func testSortedOnNumericalArrays() throws {
        for i in 0..<sortedNumericalArrays.count {
            let result = notSortedNumericalArrays[i].sorted(using: .MergeSort)
            XCTAssert(sortedNumericalArrays[i].elementsEqual(result),
                      "Sorted Array \(sortedNumericalArrays[i]) does not equal result Array \(result)")
        }
    }
}

