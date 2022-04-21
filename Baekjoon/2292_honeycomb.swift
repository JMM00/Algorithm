//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

let input = Int(readLine()!)!

var sum = 1
for i in 0...input {
    sum += 6*i
    if (input <= sum){
        print(i+1)
        break
    }
}
