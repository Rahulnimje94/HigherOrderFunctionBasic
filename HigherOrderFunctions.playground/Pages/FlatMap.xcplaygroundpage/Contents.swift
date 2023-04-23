import UIKit

// MARK: FlatMap -> flatMap is a higher-order function in Swift that transforms a collection of elements by applying a transformation function to each element, and then flattening the resulting sequence into a single array.

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
