
class HashTable<Element: Hashable> {
    var count: Int {
        return _count
    }
    private var _count = 0
    private var _hashTable = Array<Array<Element>>(repeating: Array<Element>(), count: 100)
    
    func add(_ element: Element) {
        let hashTablePos = hashTablePos(element)
        _hashTable[hashTablePos].append(element)
        _count += 1
    }
    
    func has(_ element: Element) -> Bool {
        let hashTablePos = hashTablePos(element)
        return _hashTable[hashTablePos].contains(element)
    }
    
    private func hashTablePos(_ element: Element) -> Int {
        let hash = hash(element)
        return abs(hash % _hashTable.count)
    }
    
    private func hash(_ element: Element) -> Int {
        var hasher = Hasher()
        hasher.combine(element)
        return hasher.finalize()
    }
}
