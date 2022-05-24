//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let input = readLine()!.split(separator: " ").compactMap{Int(String($0))!}
let (n,c) = (input[0], input[1])
var location = [Int] ()
for _ in 0..<n {
    location.append(Int(readLine()!)!)
}


location.sort()


var start = 1
var end = location[n-1] - location[0]

var d = 0
var result = Int.max

while start <= end {
    var count = 1
    let mid = (start + end) / 2
    var first = location[0]
    
    for i in 1..<n {
        d = location[i] - first
        if mid <= d {
            count += 1
            first = location[i]
        }
    }
    if count >= c {
        result = mid
        start = mid + 1
    }else{
        end = mid - 1
    }
}
print(result)

