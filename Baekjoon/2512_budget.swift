//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let n = Int(readLine()!)!
let budget = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = Int(readLine()!)!

var left = 1
var right = budget.max()!

var result = 0
while left <= right {
    let mid = (left + right) / 2
    
    var sum = 0
    for i in budget {
        sum += (i < mid) ? i : mid
    }
    
    if sum > m {
        right = mid - 1
    }else{
        left = mid + 1
        result = mid
    }
}
print(result)
