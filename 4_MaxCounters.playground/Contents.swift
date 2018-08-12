//: Playground - noun: a place where people can play

import Foundation

class MaxCounters {
    init() {

    }
    public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
        var maxNumer:Int = 0
        var resultArray:[Int] = Array.init(repeating: 0, count: N)
        var lastMaxNumber = 0
        for item in A {

            if item >= 1 && item <= N {
                var value = resultArray[item - 1]
                if value < lastMaxNumber {
                    value = lastMaxNumber
                }
                resultArray[item - 1] = value + 1
                if value + 1 > maxNumer {
                    maxNumer = value + 1
                }
            } else {
                lastMaxNumber = maxNumer
            }
        }
        for i in 0..<N {
            if resultArray[i] < lastMaxNumber {
                resultArray[i] = lastMaxNumber
            }
        }
        return resultArray
    }
}
var testCase:[Int] = [3,4,4,6,1,4,4]
let N:Int = 5
let result:[Int] = MaxCounters().solution(N, &testCase)
/*
 let increaseIndex = item - 1
 if item - 1 >= 0 {
 resultArray[increaseIndex] += 1
 }
 if resultArray[increaseIndex] > maxNumer {
 maxNumer = resultArray[increaseIndex]
 }
 */
