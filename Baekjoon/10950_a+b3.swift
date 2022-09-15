//
//  main.swift
//  algorithmTest
//
//  Created by 전지민 on 2022/09/16.
//

import Foundation

let count = Int(readLine()!)!
for _ in 0..<count {
    let a = readLine()!.split(separator: " ").map{Int(String($0))!}
    print(a[0]+a[1])
}

