//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

var numArray = [Int] (repeating: 0, count: 10)
var result: Int = 1

for _ in 0..<3 {
    result *= Int(readLine()!)!
}
var remain: Int
while result > 0 {
    remain = result % 10
    numArray[remain] += 1
    result /= 10
}
for i in 0..<10 {
    print(numArray[i])
}
