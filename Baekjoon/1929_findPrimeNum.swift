//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
var primeArr = [Bool] (repeating: true, count: input[1])

primeArr[0] = false
for i in 2...Int(sqrt(Double(input[1])))+1 {
    var j = 2
    if primeArr[i-1] {
        while i*j <= input[1]{
            primeArr[i*j-1] = false
            j += 1
        }
    }
}

for i in input[0]-1..<input[1] {
    if primeArr[i] {
        print(i+1)
    }
}




