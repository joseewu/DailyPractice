//: Playground - noun: a place where people can play

import Foundation

class FrogRiverOne {
    init() {
    }
    public func solution(_ X : Int, _ A : inout [Int]) -> Int {
        if A.count == 0 {
            return -1
        }
        var distanceArray:[Int] = Array(repeating: -1, count: X)
        var i:Int = 0
        var minShowTime:Int = 0
        while true {
            if i >= X {
                return -1
            }
            for item in A {
                let position = item - 1
                if position >= 0 {
                    if distanceArray[position] == -1 {
                        minShowTime += 1
                    }
                    distanceArray[position] += 1
                    if minShowTime == X {
                        return i
                    }
                }
                i += 1
            }
        }
    }
}
var distance:Int = 3
var testCase = [1, 3, 1, 3, 2, 1, 3]
let result:Int = FrogRiverOne().solution(distance, &testCase)
/*
 var uniqueArray:[Int] = Array(Set(A))
 var distanceArray:[Int] = Array(repeating: 0, count: uniqueArray.count)
 */
