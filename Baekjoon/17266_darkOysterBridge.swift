//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!
let locations = readLine()!.split(separator: " ").map{Int(String($0))!}

var left = 1
var right = n

var result = 0
var darkStart = 0

while left<=right {
    let mid = (left + right) / 2
    for i in locations {
        if i - mid <= darkStart {
            darkStart = i + mid
        }else{
            break
        }
    }
    if isAllBright(h: mid) {
        result = mid
        right = mid - 1
    }else{
        left = mid + 1
    }
}
print(result)

func isAllBright(h: Int) -> Bool {
    var darkStart = 0
    
    for i in locations {
        if i - h <= darkStart {
            darkStart = i + h
        }else{
            return false
        }
    }
    if darkStart >= n {
        return true
    }else{
        return false
    }
}
