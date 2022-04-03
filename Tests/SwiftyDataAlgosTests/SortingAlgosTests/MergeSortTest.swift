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
        [-2,-5],
        [2.3, 2.112],
        [-2.3, 2.112]
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
        [-5,-2],
        [2.112, 2.3],
        [-2.3, 2.112]
    ]
    
    func testSortedOnNumericalArrays() throws {
        for i in 0..<sortedNumericalArrays.count {
            let result = notSortedNumericalArrays[i].sorted(using: .MergeSort)
            XCTAssert(sortedNumericalArrays[i].elementsEqual(result),
                      "Sorted Array \(sortedNumericalArrays[i]) does not equal result Array \(result)")
        }
    }
    
    let notSortedStringArrays =
    [
        ["a"],
        ["z","a"],
        ["a","A"],
        ["10","1"],
        ["10","2","1"]
    ]
    
    let sortedStringArrays =
    [
        ["a"],
        ["a","z"],
        ["A","a"],
        ["1","10"],
        ["1","10","2"]
    ]
    
    func testSortedOnStringArrays() throws {
        for i in 0..<sortedStringArrays.count {
            let result = notSortedStringArrays[i].sorted(using: .MergeSort)
            XCTAssert(sortedStringArrays[i].elementsEqual(result),
                      "Sorted Array \(sortedStringArrays[i]) does not equal result Array \(result)")
        }
    }
}

