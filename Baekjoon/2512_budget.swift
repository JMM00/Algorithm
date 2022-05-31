//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let n = Int(readLine()!)!
let request = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
let budget = Int(readLine()!)!

var start = 1
var end = request[n-1]

var result = 0

while start<=end {
    var sum = 0
    let mid = (start + end) / 2
    
    for i in request {
        if i <= mid {
            sum += i
        }else {
            sum += mid
        }
    }
    
    if sum > budget {
        end = mid - 1
        
    }else{
        if result < mid {
            result = mid
        }
        start = mid + 1
    }
}
print(result)
