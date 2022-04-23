//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

print(min(min(input[0],input[2]-input[0]), min(input[1], input[3]-input[1])))


