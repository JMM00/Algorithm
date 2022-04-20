//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

let nums = readLine()!.split(separator: " ").map { Int(String($0))!}
var verifiNum = 0

for i in 0..<nums.count {
    verifiNum += (nums[i]*nums[i])
}
//let verifi = verifiNum % 10
verifiNum %= 10
print(verifiNum)
