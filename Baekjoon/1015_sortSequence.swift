//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let length = Int(readLine()!)!
var arr = [(Int, Int)] ()

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
for i in 0..<length {
    arr.append((input[i],i))
}

let sorted = arr.sorted { (first, second) in
    if first.0 == second.0 {
        return first.1 < second.1
    }else{
        return first.0 < second.0
    }
}

var result = [Int] (repeating: 0, count: length)

for i in 0..<length {
    result[sorted[i].1] = i
}

for i in result {
    print(i , terminator: " ")
}
