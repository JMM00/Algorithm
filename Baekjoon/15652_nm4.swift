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
        let start:Int
        if arr.count < 1 {
            start = 1
        }else{
            start = arr[(arr.count)-1]
        }
        
        for i in start...n {
            arr.append(i)
            rec_func(value: value+1)
            arr.removeLast()
        }
    }
}
