//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let length = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map{Int(String($0))!}
nums.sort()
var start = 0
var end = length-1
var (answer_start, answer_end) = (start, end)

var total = abs(nums[start] + nums[end])

while start < end {
    let temp = nums[start] + nums[end]
    if abs(temp) < total {
        (answer_start, answer_end) = (start, end)
        total = abs(temp)
        if total == 0 {
            break
        }
    }
    if temp > 0 {
        end -= 1
    }else{
        start += 1
    }
}
    
print(nums[answer_start], nums[answer_end])
