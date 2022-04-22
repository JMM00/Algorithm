//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

let input: [Double] = readLine()!.split(separator: " ").map{ Double($0)!}
var day = Int(ceil((input[2]-input[1])/(input[0]-input[1])))
print(day)

