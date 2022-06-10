//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let n = Int(readLine()!)!
let k = Int(readLine()!)!

var left = 1
var right = k

var result = 0

while left <= right {
    var sum = 0
    let mid = (left + right) / 2
    
    for i in 1...n {
        sum += min(mid/i, n)
    }
    if sum < k {
        left = mid + 1
    }else{
        result = mid
        right = mid - 1
    }
}
print(result)
