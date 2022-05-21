//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let input = readLine()!.split(separator: " ").compactMap{Int(String($0))!}
let (n,m) = (input[0], input[1])
var height = readLine()!.split(separator: " ").compactMap{Int(String($0))!}

height.sort()

var result = 0
var start = height[0]
var end = height[n-1]
var mid = 0
while start < end {
    mid = (start + end) / 2
    var sum = 0
    for i in 0..<n {
        if height[i] > mid {
            sum += height[i] - mid
        }
    }
    if sum < m {
        end = mid
    }else{
        start = mid + 1
        result = mid
    }
}

print(result)

