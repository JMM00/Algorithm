//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let k = input[1]
var volume = [Int] ()
for _ in 0..<n {
    volume.append(Int(readLine()!)!)
}

var left = 0
var right = volume.max()!
var result = n == k ? volume.min()! : 0

while(left <= right) {
    let mid = (left + right) / 2
    var count = 0
    if mid == 0 {
        break
    }
    for i in volume {
        count += i/mid
    }
    
    if count >= k {
        left = mid + 1
        result = max(mid, result)
    }else {
        right = mid - 1
    }
}
print(result)
