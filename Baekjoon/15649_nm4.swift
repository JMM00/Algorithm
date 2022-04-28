//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let input = readLine()?.split(separator: " ").map{Int(String($0))!}
let n = input![0]
let m = input![1]

var arr:[Int] = []
var used = [Bool] (repeating: false, count: n+1)

var result = ""



rec_func(value: 0)
print(result)

func rec_func (value : Int) {
    if  value == m {
        for i in arr {
            result += "\(i) "
        }
        result += "\n"
    }else{
        for i in 1...n {
            if used[i]{
                continue
            }else {
                arr.append(i)
                used[i] = true
                rec_func(value: value+1)
                used[i] = false
                arr.removeLast()
            }
        }
    }
}
