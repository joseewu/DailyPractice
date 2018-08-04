//: Playground - noun: a place where people can play

import Foundation
import Cocoa
class ForgJmp {
    init() {

    }
    public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
        if X < 0 || Y < 0 || D < 0 {
            return 0
        }
        let interval:CGFloat = CGFloat(Y - X)
        if interval <= 0 {
            return 0
        }
        if D > Int(interval) {
            return 1
        }
        let ceilNum = (Y - X)/D
        let temp2 = interval/CGFloat(D)
        let resultSrt = String(format: "%.01f", arguments: [temp2])
        if let n = Double(resultSrt) {
            let f = CGFloat(n)
            let interg = Int(n)
            let floatingPoint = f - CGFloat(ceilNum)
            if floatingPoint > 0 {
                return interg + 1
            } else {
                return interg
            }
        }
        return 0
    }
}
let start:Int = 1
let end:Int = 1
let distance:Int = 9999999
//let start:Int = 10
//let end:Int = 85
//let distance:Int = 30
let result = ForgJmp().solution(start, end, distance)
