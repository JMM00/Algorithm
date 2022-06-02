//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (input[0], input[1])
let length = readLine()!.split(separator: " ").map{Int(String($0))!}

var result = Int.max

var start = length.max()!
var end = length.reduce(0, +)

while start <= end {
    let mid = (start + end) / 2
    var sum = 0
    var count = 1
    for i in length {
        if sum + i > mid {
            sum = 0
            count += 1
        }
        sum += i
    }
    
    if count <= m {
        end = mid - 1
        result = min(mid, result)
    }else {
        start = mid + 1
    }
}
print(result)


