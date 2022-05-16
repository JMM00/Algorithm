//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let length = Int(readLine()!)!

for _ in 0..<length {
    let input: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
    let arrA: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
    var arrB: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}

    let n = input[0]
    let m = input[1]

    var count = 0


    arrB.sort()
    for i in 0..<n {
        let x = arrA[i]
        var l = 0
        var r = m-1
        var result = l
        
        while l <= r {
            let index = (l + r) / 2
            if arrB[index] < x {
                result = index + 1
                l = index + 1
            }else if arrB[index] >= x {
                r = index - 1
            }
        }
        count += result
    }

    print(count)
}
