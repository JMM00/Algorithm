//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (input[0], input[1])
var balance = [Int] ()

for _ in 0..<n {
    balance.append(Int(readLine()!)!)
}

var low = 0
var high = balance.reduce(0, +)

var result = Int.max

while low <= high {
    let mid = (low + high) / 2
    var remain = mid
    var count = 1
    for i in balance {
        if remain - i < 0 {
            count += 1
            remain = mid
        }
        remain -= i
    }
    if count > m {
        low = mid + 1
    }else {
        result = min(mid, result)
        high = mid - 1
    }
}
print(result)
