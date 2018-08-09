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
        var minShowTime = distanceArray[0..<X-1].min() ?? -1
        while minShowTime == -1 {
            if i >= X {
                return -1
            }
            for item in A {
                let position = item - 1
                if position >= 0 {
                    distanceArray[position] = i
                }
                i += 1
                minShowTime = distanceArray[0..<X].min() ?? -1
                if minShowTime != -1 {
                    return distanceArray.last ?? -1
                }
            }
        }
        return -1
    }
}
var distance:Int = 3
var testCase = [1, 3, 1, 3, 2, 1, 3]
let result:Int = FrogRiverOne().solution(distance, &testCase)
/*
 var uniqueArray:[Int] = Array(Set(A))
 var distanceArray:[Int] = Array(repeating: 0, count: uniqueArray.count)
 */
