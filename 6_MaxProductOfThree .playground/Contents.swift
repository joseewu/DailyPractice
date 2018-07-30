//: Playground - noun: a place where people can play

import Foundation

class LessonSixTwo{
    init() {
    }
    public func solution(_ A : inout [Int]) -> Int {
        let sortedA = A.sorted()
        let N = sortedA.count
        if N <= 2 {
            return 0
        }
        var result:Int = 1
        var previousResult:Int = 1
        let nagativeArray = sortedA.filter { (content) -> Bool in
            return content < 0
        }
        for i in N-3..<N {
            result = result * sortedA[i]
        }
        if nagativeArray.count <= 1 || nagativeArray.count == N {
            return result
        } else {
            for i in 0..<2 {
                previousResult = previousResult * nagativeArray[i]
            }
            previousResult = previousResult*sortedA[N-1]
            if previousResult <= result {
                return result
            } else {
                return previousResult
            }
        }
    }
}

var testCase2 = [1,2]
let result2 = LessonSixTwo().solution(&testCase2)
