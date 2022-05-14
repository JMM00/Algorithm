//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let length = Int(readLine()!)!
var arr = [String] ()

for _ in 0..<length {
    let input = readLine()!.split(separator: ".").map{String($0)}
    arr.append(input[1])
}
let sorted = arr.sorted()

var count = 1
for i in 1..<length {
    if sorted[i-1] == sorted[i] {
        count += 1
    }else{
        print("\(sorted[i-1]) \(count)")
        count = 1
    }
}
print(sorted[length-1], count)
