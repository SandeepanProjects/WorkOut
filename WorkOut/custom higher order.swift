//
//  custom higher order.swift
//  WorkOut
//
//  Created by Apple on 27/10/21.
//

//MAP:

extension Array {
    func myMap<Transform>(transform: (Element)-> Transform) -> [Transform] {
        var result = [Transform]()
        forEach { element in
            result.append(transform(element))
        }
        return result
    }
}
let a = [1,2,3,4]
print(a.myMap{$0*2})


//Compact map:

extension Array {
    func myCompactMap<Transform>(transform: (Element)-> Transform?) -> [Transform] {
        var result = [Transform]()
        forEach { element in
            if let transformedEntity = transform(element) {
                result.append(transformedEntity)
            }
        }
        return result
    }
}
let a = ["1", "2", "shdh"]
print(a.myCompactMap{Int($0)})


//Filter:
extension Array {
    func myFilter(isIncluded: (Element)-> Bool) -> [Element] {
        var result = [Element]()
        forEach { element in
            if isIncluded(element) {
                result.append(element)
            }
        }
        return result
    }
}
let a = [1,2,3,4,5]
print(a.myFilter{$0 % 2 == 0})


//Reduce:

extension Array {
    func myReduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Element)-> Result) -> Result {
        var result = initialResult
        forEach {
            result = nextPartialResult(result, $0)
        }
        return result
    }
}
let numbers = [1, 2, 3, 4]
let numberSum = numbers.myReduce(0, { sum, element in
sum + element
})
print(numberSum) // prints 10
