//
//  MergeSortTest.swift
//  
//
//  Created by Jan Sembdner on 02.04.22.
//

import XCTest
@testable import SwiftyDataAlgos

final class MergeSortTests: XCTestCase {
    func testSortedUsingMergeSortOnSortedArray() throws {
        let sortedArray = [1,2,3]
        let result = sortedArray.sorted(using: .MergeSort)
        XCTAssert(sortedArray.elementsEqual(result),
                  "Sorted Array \(sortedArray) does not equal result Array \(result)")
    }
    
    func testNotSortedUsingMergeSortOnSortedArray() throws {
        let notSortedArray = [2,1,3]
        let sortedArray = [1,2,3]
        let result = notSortedArray.sorted(using: .MergeSort)
        XCTAssert(sortedArray.elementsEqual(result),
                  "Sorted Array \(sortedArray) does not equal result Array \(result)")
    }
    
    func testNotSorted2UsingMergeSortOnSortedArray() throws {
        let notSortedArray = [2,1,3,6,9,7,2]
        let sortedArray = [1,2,2,3,6,7,9]
        let result = notSortedArray.sorted(using: .MergeSort)
        XCTAssert(sortedArray.elementsEqual(result),
                  "Sorted Array \(sortedArray) does not equal result Array \(result)")
    }
}

