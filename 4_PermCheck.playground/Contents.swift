//: Playground - noun: a place where people can play

import Foundation

class PermCheck {
    init() {
    }
    public func solution(_ A : inout [Int]) -> Int {
        let count:Int = A.count
        let uniqueArray:Array = Array(Set(A))
        if uniqueArray.count != count {
            return 0
        }
        let expectedSum:Int = ((1+count)*count)/2
        var actualSum:Int = 0
        for item in A {
            actualSum += item
        }
        if actualSum == expectedSum {
            return 1
        } else {
            return 0
        }
    }
}
var testCase:[Int] = [1,4,1]
let result:Int = PermCheck().solution(&testCase)
