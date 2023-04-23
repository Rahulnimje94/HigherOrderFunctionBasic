import UIKit

// MARK: Compact Map ->  Similar to Map transform an optional value to a non-optional value by filtering out any nil values that may result from the mapping operation.

let numbers = [1, nil, 2, 3, nil, 4]

let map1 = numbers.map { number -> Int? in
    if let number {
        return number * 2
    } else {
        return nil
    }
}

print(map1)

let map2 = numbers.map({ $0 == nil ? nil : $0! * 2})
print(map2)

let compactMap1 = numbers.compactMap({ $0 == nil ? nil : $0! * 2})
print(compactMap1)

///Removes Nil values [1, nil, 2, 3, nil, 4]
let compactMap2 = numbers.compactMap {$0}
print(compactMap2)

/// Using compactMap to Remove Optional value and Multiplying using map so no need to handle optinal like we're doing in compactMap1
let compactWithMap = numbers.compactMap{$0}.map{ $0 * 5}
print(compactWithMap)
