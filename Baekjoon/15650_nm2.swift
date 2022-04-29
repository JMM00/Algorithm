//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

//nm2 15650
let input = readLine()?.split(separator: " ").map{Int(String($0))!}
let n = input![0]
let m = input![1]

var arr:[Int] = []
var used = [Bool] (repeating: false, count: n+1)

var result = ""

rec_func(0)
print(result)

func rec_func (_ value : Int) {
    if  value == m {
        for i in arr {
            result += "\(i) "
        }
        result += "\n"
    }else{
        let start:Int
        if arr.count < 1 {
            start = 1
        }else{
            start = arr[(arr.count)-1]
        }
        for i in start...n {
            if used[i]{
                continue
            }else {
                arr.append(i)
                used[i] = true
                rec_func(value+1)
                used[i] = false
                arr.removeLast()
            }
        }
    }
}


