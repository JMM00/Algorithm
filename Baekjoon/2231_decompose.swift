//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

let input = Int(readLine()!)!
let inputCount = Int(String(input).count)

var start = input - 9 * inputCount
var minimum = input

for i in start..<input {
    var sum = i
    var value = i
    while value > 0 {
        sum += value % 10
        value /= 10
    }
    if sum == input {
        minimum = i
        break
    }
}
if minimum == input {
    minimum = 0
}
print(minimum)

