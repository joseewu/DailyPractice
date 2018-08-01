//: Playground - noun: a place where people can play

import Foundation

class AddOccurrencsInArray{
    init() {

    }
    public func solution(_ A : inout [Int]) -> Int {
        let arrayCount:Int = A.count
        if arrayCount%2 == 0 {
            return 0
        }
        var result:Int = 0
        for item in A {
            result ^= item
        }
        return result
    }
}

var testCase = [1,1,2,2,2,2,2,8,2]
let result = AddOccurrencsInArray().solution(&testCase)
