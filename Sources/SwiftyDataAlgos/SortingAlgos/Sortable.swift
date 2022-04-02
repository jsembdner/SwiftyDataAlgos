//
//  Sortable.swift
//  
//
//  Created by Jan Sembdner on 02.04.22.
//

protocol Sortable {
    func sorted(using algo: SortingAlgoType) -> Self
}

enum SortingAlgoType {
    case MergeSort
}

extension Array: Sortable where Element: Comparable {
    func sorted(using algo: SortingAlgoType) -> Array<Element> {
        switch algo {
        case .MergeSort:
            return MergeSort<Element>().sort(self)
        }
    }
    
}
