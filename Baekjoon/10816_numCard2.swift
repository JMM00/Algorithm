//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let n = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted()
let m = Int(readLine()!)!
var target = readLine()!.split(separator: " ").map{Int(String($0))!}

var count = [Int] (repeating: 0, count: m)

var dict = [Int:Int] ()
var result = [Int] ()

for i in input {
    if dict.keys.contains(i) {
        dict[i]! += 1
    }else {
        dict[i] = 1
    }
}

for j in target {
    if dict.keys.contains(j) {
        result.append(dict[j]!)
    }else{
        result.append(0)
    }
}
print(result.map{String($0)}.joined(separator: " "))
