//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let length = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
let target = Int(readLine()!)!

var count = 0

var left = 0
var right = length-1


while left < right {
    let sum = input[left] + input[right]
    if sum == target {
        count += 1
        left += 1
    }else if sum < target {
        left += 1
    }else{
        right -= 1
    }
}
print(count)
