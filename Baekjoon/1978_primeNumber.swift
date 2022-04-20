//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

let length = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map{Int(String($0))!}
let numMax = nums.max()!
var numsArr = [Bool] (repeating: true, count: numMax) //일단 모두 소수라고 가정
numsArr[0] = false //1은 소수가 아니므로 예외

for i in 2...Int(sqrt(Double(numMax)))+1{
    if numsArr[i-1] {
        var j = 2
        while i*j <= numMax {
            numsArr[(i*j)-1] = false
            j += 1
        }
    }
}
var count = 0
for i in 0..<length {
    if numsArr[nums[i]-1] {
        count += 1
    }
}
print(count)
