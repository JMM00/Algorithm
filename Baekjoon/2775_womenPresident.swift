//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

let count = Int(readLine()!)!

for _ in 0..<count {
    let floor = Int(readLine()!)!
    let room = Int(readLine()!)!
    
    var arr = [[Int]] (repeating: Array(repeating: 0, count: room), count: floor+1)
    
    for i in 0..<floor+1{
        arr[i][0] = 1
    }
    for i in 0..<room {
        arr[0][i] = i+1
    }
    for i in 1..<floor+1 {
        for j in 1..<room {
            if arr[i][j] == 0 {
                arr[i][j] = arr[i][j-1] + arr[i-1][j]
            }
        }
    }
    print(arr[floor][room-1])
}




