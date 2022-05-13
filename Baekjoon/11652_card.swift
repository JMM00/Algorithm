//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let length = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<length {
    arr.append(Int(readLine()!)!)
}

let sorted = arr.sorted()

var mode: Int = sorted[0]
var modeCnt: Int = 0
var currentCnt: Int = 1

for i in 0..<length-1 {
    if sorted[i] == sorted[i+1] {
        currentCnt += 1
    }else{
        if currentCnt > modeCnt {
            modeCnt = currentCnt
            mode = sorted[i]
        }
        currentCnt = 1
    }
}
if currentCnt > modeCnt{
    modeCnt = currentCnt
    mode = sorted[length-1]
}
print(mode)
