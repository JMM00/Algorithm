//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let s = input[1]
let sequence = readLine()!.split(separator: " ").map{Int(String($0))!}


var used = [Bool](repeating: false, count: 21)
var sum = 0
var result = 0

rec_func(0, 0)
print(result)


func rec_func(_ value: Int, _ start: Int) {
    if sum == s && value >= 1{
        result += 1
    }
        
    for i in start..<n {
        if !used[i] {
            used[i] = true
            sum += sequence[i]
            rec_func(value+1, i)
            used[i] = false
            sum -= sequence[i]
        }
    }
}
