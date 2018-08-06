//: Playground - noun: a place where people can play

import Foundation

class TapeEquilibrium {
    init() {
    }
    public func solution(_ A : inout [Int]) -> Int {
        if A.count <= 1 {
            return 0
        }
        var totalSum:Int = 0
        for item in A {
            totalSum += item
        }
        var result:Int = 0
        var preSum:Int = 0
        var previousValue:Int = 0
        for i in 0..< A.count - 1 {
            preSum += A[i]
            let rightSum = totalSum - preSum
            result = abs(rightSum-preSum)
            if i == 0 {
                previousValue = result
            } else {
                if result < previousValue {
                    previousValue = result
                }
            }
        }
        return previousValue
    }
}
var testCase:[Int] = [1,1]
let result:Int = TapeEquilibrium().solution(&testCase)
print(result)
