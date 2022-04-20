//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

var numArray: [Int] = []
let length = 9

for _ in 0..<length {
    numArray.append(Int(readLine()!)!)
}
let maxNum = numArray.max()!
let maxIndex = numArray.firstIndex(of: maxNum)! + 1
print(maxNum)
print(maxIndex)
