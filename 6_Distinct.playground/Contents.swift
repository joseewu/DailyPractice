//: Playground - noun: a place where people can play

import Foundation

class LessonSix{
    init() {

    }
    public func solution (_ A : inout [Int]) -> Int {
        if A.count <= 0 {
            return 0
        }
        let transformedInput = A.sorted()
        var num = 1
        var previousValue = transformedInput[0]
        for i in 0..<A.count {
            if previousValue != transformedInput[i] {
                previousValue = transformedInput[i]
                num += 1
            }
        }
        return num
    }
}
//var testCase = [-1,0,1,2,3,3]
//let result = LessonSix().solution(&testCase)
