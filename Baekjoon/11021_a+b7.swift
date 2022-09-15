//
//  main.swift
//  algorithmTest
//
//  Created by 전지민 on 2022/09/16.
//

import Foundation

let count = Int(readLine()!)!
for i in 0..<count {
    let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
    print("Case #\(i+1): \(arr[0]+arr[1])")
}
