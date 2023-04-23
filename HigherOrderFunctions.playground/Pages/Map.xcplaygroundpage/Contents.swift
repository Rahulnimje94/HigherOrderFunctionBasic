import UIKit

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
