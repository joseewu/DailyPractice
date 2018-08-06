//: Playground - noun: a place where people can play

import Foundation

class PermMissingElem {
    init() {

    }
    public func solution(_ A : inout [Int]) -> Int {
        let sortedA = A.sorted()
        var expectedValue:Int = sortedA.count
        if sortedA.count < 2 {
            if sortedA[0] != expectedValue {
                return expectedValue
            } else {
                return expectedValue + 1
            }
        }
        for i in 0..<sortedA.count {
            expectedValue = i + 1
            if sortedA[i] != expectedValue {
                return expectedValue
            }
        }
        return expectedValue + 1
    }
}
var testCase = [1,2,3,5]
let result:Int = PermMissingElem().solution(&testCase)
/*
 guard let first = sortedA.first, let last = sortedA.last else {
 return expectedValue + 1
 }
 if last - first == expectedValue - 1 {
 return 1000
 }
 */
