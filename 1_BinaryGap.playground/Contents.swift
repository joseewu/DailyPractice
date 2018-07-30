//: Playground - noun: a place where people can play

import UIKit
import GLKit
class BinaryGap {
    init() {

    }
    public func solution(_ N : Int) -> Int {
        guard N > 4 else { return 0 }
        let binary = String(N, radix: 2)
        var startIndex = 0
        var maxGap = 0
        var isTracking = false
        let strArray = [Character](binary)
        for i in 0..<strArray.count{
            if strArray[i] == "1" && isTracking == false {
                startIndex = i
                isTracking = true
            } else if strArray[i] == "1" && isTracking == true {
                let tempGap = i - startIndex - 1
                maxGap = (tempGap>maxGap) ? tempGap : maxGap
                startIndex = i
            }
        }
        return maxGap
    }
}
let result = BinaryGap().solution(2147483647)
print(result)
