//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let num = readLine()!.split(separator: " ").map{Int(String($0))!}
let (k,n) = (num[0],num[1])
var length = [Int] ()
for _ in 0..<k {
    length.append(Int(readLine()!)!)
}
length.sort()

var start = 1
var end = length[k-1]

var mid = 0
var result = 0

while start <= end {
    var count = 0
    mid = (start + end) / 2
    for i in length {
        count += i/mid
    }
    
    if count < n {
        end = mid - 1
    }else{
        if result < mid {
            result = mid
        }
        start = mid + 1
    }
}
print(result)
