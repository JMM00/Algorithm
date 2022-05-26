//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let n = Int(readLine()!)!
var arrA = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{Int(String($0))!}

arrA.sort()
for i in 0..<m {
    var isExist = false
    let x = input[i]
    var left = 0
    var right = n-1
    
    while left <= right {
        let index = (left + right) / 2
        if arrA[index] < x{
            left = index + 1
        }
        else if arrA[index] > x {
            right = index - 1
        }else{
            print(1)
            isExist = true
            break
        }
    }
    if !isExist {
        print(0)
    }
}


