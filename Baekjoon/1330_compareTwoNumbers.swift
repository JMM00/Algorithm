//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

let nums: [Int] = readLine()!.split(separator: " ").map { Int(String($0))!}

if nums[0]>nums[1]{
    print(">")
}else if nums [0] < nums[1]
{
    print("<")
}else {
    print("==")
}
