//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation
let count = Int(readLine()!)!
var numArr = [Int] (repeating: 0, count: count)

for i in 0..<count {
    numArr[i] = Int(readLine()!)!
}
numArr.sort()

for i in 0..<count {
    print(numArr[i])
}

