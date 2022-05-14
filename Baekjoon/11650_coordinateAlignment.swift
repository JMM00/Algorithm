//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let length = Int(readLine()!)!
var arr = [(Int, Int)] ()

for _ in 0..<length {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0],input[1]))
}
let sorted = arr.sorted { (first, second) in
    if first.0 == second.0 {
        return first.1 < second.1
    }else{
        return first.0 < second.0
    }
}

for i in sorted {
    print(i.0, i.1)
}
