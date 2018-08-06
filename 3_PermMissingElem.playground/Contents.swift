//: Playground - noun: a place where people can play

import Foundation

class PermMissingElem {
    init() {

    }
    public func solution(_ A : inout [Int]) -> Int {
        var expectedSummation:Int = ((1+A.count)*A.count)/2
        var sum:Int = 0
        for item in A {
            sum += item
        }
        var interval = sum - expectedSummation
        return A.count + 1 - interval
    }
}
var testCase = [1,3]
let result:Int = PermMissingElem().solution(&testCase)
