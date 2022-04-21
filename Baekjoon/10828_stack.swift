//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

var stackArr: [Int] = []

func push(value: Int) {
    stackArr.append(value)
}
func pop() -> Int {
    if size() == 0 {
        return -1
    }
    let stackLast = stackArr.last!
    stackArr.removeLast()
    return stackLast
}
func size() -> Int {
    return stackArr.count
}
func empty() -> Int {
    return size() == 0 ? 1:0
}
func top() -> Int {
    return stackArr.last!
}

let repetition: Int = Int(readLine()!)!

for _ in 0..<repetition {
    let input = readLine()!.split(separator: " ").map{String($0)}
    switch input[0] {
    case "push": push(value: Int(input[1])!)
    case "size": print(size())
    case "pop": print(pop())
    case "empty": print(empty())
    case "top": print(top())
    default: break
    }
}
