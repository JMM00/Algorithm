//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

let testNum = Int(readLine()!)!
var height = 0
var width = 0

for _ in 0..<testNum {
    let testCase = readLine()!.split(separator: " ").map{Int($0)!}
    
    if testCase[0] == 1{
        height = testCase[0]
        width = testCase[2]
    }
    else{
        height = testCase[2] % testCase[0]>0 ? testCase[2] % testCase[0] : testCase[0]
        width = testCase[2] % testCase[0]>0 ? (testCase[2] / testCase[0]) + 1 : testCase[2] / testCase[0]
    }
    let str = String(height)+String(format: "%02d", width)
    print(str)
}




