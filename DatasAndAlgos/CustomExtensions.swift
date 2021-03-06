//
//  CustomExtensions.swift
//  DatasAndAlgos
//
//  Created by Carter Appleton on 9/10/16.
//  Copyright © 2016 Carter Appleton. All rights reserved.
//

// Allow String duplication through multiplication:
// "a" * 5 = "aaaaa"
// "ab" * 3 = "ababab"
func * (left: String, right: Int) -> String {
    
    if right <= 0 {
        return ""
    }
    
    var result = left
    for _ in 1..<right {
        result += left
    }
    
    return result
}

extension _ArrayType where Generator.Element == Int {

    func sum() -> Int {
        return self.reduce(0, combine: +)
    }
    
}

extension Array where Element: Hashable {
    
    func removeDuplicates() -> [Element] {
        return Array(Set<Element>(self))
    }
    
}