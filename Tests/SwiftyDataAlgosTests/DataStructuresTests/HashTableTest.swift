
import XCTest
@testable import SwiftyDataAlgos

final class HashTableTests: XCTestCase {
    var hashTable = HashTable<String>()
    
    override func setUp() {
        hashTable = HashTable<String>()
    }
    
    func testNewHashTableIsEmpty() {
        XCTAssertTrue(hashTable.count == 0)
    }
    
    func testAddElementToEmptyHashTableHasOneElement() {
        hashTable.add("element")
        XCTAssert(hashTable.count == 1)
    }
    
    func testAddElementAndHasSameElement() {
        let addedElement = "element"
        hashTable.add(addedElement)
        XCTAssertTrue(hashTable.has(addedElement))
    }
    
    func testDoesNotHaveANotAddedElement() {
        let anotherElement = "anotherElement"
        XCTAssertFalse(hashTable.has(anotherElement),
                       "\(anotherElement) was found in the hashtable")
    }
    
    func testMoreElements() {
        let elem1 = "elem1"
        let elem2 = "elem2"
        let elem3 = "elem3"
        let elem4 = "elem4"
        hashTable.add(elem1)
        hashTable.add(elem2)
        hashTable.add(elem3)
        hashTable.add(elem4)
        XCTAssertTrue(hashTable.has(elem1))
        XCTAssertTrue(hashTable.has(elem2))
        XCTAssertTrue(hashTable.has(elem3))
        XCTAssertTrue(hashTable.has(elem4))
        XCTAssertFalse(hashTable.has("notContained"))
    }
}
