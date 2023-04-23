# Higher Order Function Basics (Map, CompactMap, FlatMap)

## Map is a higher-order function in Swift that transforms a collection of elements by applying a transformation function to each element, and returns a new collection containing the transformed elements in the same order as the original collection.
```Swift
var numbers = [1,2,3,4,5]

var tempArray = [Int]()

for number in numbers {
    tempArray.append(number * 2)
}
print(tempArray)

let map1 = numbers.map { number in
    return number * 2
}
print(map1)

let map2 = numbers.map{ $0 * 2}
print(map2)
```

## Compact Map ->  Similar to Map transform an optional value to a non-optional value by filtering out any nil values that may result from the mapping operation.
```Swift
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
```

## FlatMap -> flatMap is a higher-order function in Swift that transforms a collection of elements by applying a transformation function to each element, and then flattening the resulting sequence into a single array.
```Swift
var numbers = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
]

var tempArray = [Int]()

for number in numbers {
    tempArray += number
}

print(tempArray)

let flatMap1 = numbers.flatMap{$0}
print(flatMap1)

let flatMap2 = numbers.flatMap{$0}.map{$0 * 5}
print(flatMap2)
```
