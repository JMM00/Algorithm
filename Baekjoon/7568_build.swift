//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation
typealias Build = (weight: Int, height: Int)

let count = Int(readLine()!)!
var arr: [Build] = []
var rank: [Int] = []

for _ in 0..<count {
    let input = readLine()?.split(separator: " ").map{Int(String($0))!}
    let person: Build = (weight: input![0], height: input![1])
    arr.append(person)
}

for i in 0..<count {
    var c = 0
    for j in 0..<count {
        if arr[i].0 < arr[j].0 && arr[i].1 < arr[j].1 {
            c += 1
        }
    }
    rank.append(c+1)
}

for i in 0..<count {
    print(rank[i], terminator: " ")
}

