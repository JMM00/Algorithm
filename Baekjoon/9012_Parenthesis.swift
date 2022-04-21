//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

var repetition = Int(readLine()!)!

for _ in 0..<repetition {
    var arr:[Character] = []
    let input = readLine()!
    
    var count = 0
    
    for i in input {
        if i == "(" {
            arr.append("(")
            count += 1
        }else {
            if arr.isEmpty {
                break
            }
            arr.removeLast()
            count += 1
        }
    }
    print(arr.isEmpty && count == input.count ? "YES" : "NO")
}
