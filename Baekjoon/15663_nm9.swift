//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let m = input[1]
var nums = readLine()!.split(separator: " ").map{Int(String($0))!}

var used = [Bool] (repeating: false, count: 9)
var numsArr: [Int] = []
var result = ""

var resultSet: Set<String> = []
var resultArr: [[Int]] = []

nums.sort()
recFunc(value: 0)

for i in resultSet.sorted(by: { $0.localizedStandardCompare($1) == .orderedAscending}) {
    print(i)
}


func recFunc(value: Int) {
    if value == m {
        for i in 0..<m {
            result += "\(numsArr[i]) "
        }
        resultSet.update(with: result)
        result = ""
        return
    }else{
        for i in 0..<n {
            if !used[i]{
                used[i] = true
                numsArr.append(nums[i])
                recFunc(value: value+1)
                used[i] = false
                numsArr.removeLast()
            }
        }
    }
}
