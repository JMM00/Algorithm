//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

var arr = [Int] (repeating: 0, count: 1000000 )
let value = Int(readLine()!)!

if value != 1  && value != 0 {
    for i in 2...value {
        arr[i] = arr[i-1]+1
        if i%2 == 0 {
            arr[i] = min(arr[i], arr[i/2]+1)
        }
        if i%3 == 0 {
            arr[i] = min(arr[i], arr[i/3]+1)
        }
    }
    print(arr[value])
}else{
    print(0)
}




