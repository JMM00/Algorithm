//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

var queue: [Int] = []
let num = Int(readLine()!)!

for _ in 0..<num {
    let input = readLine()?.split(separator: " ").map{String($0)}
    
    switch input![0] {
    case "push": push(value: Int(input![1])!)
    case "pop": print(pop())
    case "empty": print(empty())
    case "size": print(size())
    case "front": print(front())
    case "back": print(back())
    default:
        break
    }
}

func push (value: Int) {
    queue.append(value)
}
func pop() -> Int {
    let value: Int
    if queue.count <= 0 {
        value = -1
    }
    else{
        value = queue[0]
        queue.removeFirst()
    }
    return value
}
func size() -> Int {
    return queue.count
}
func empty() -> Int {
    return queue.count == 0 ? 1 : 0
}
func front() -> Int {
    return queue.count == 0 ? -1 : queue[0]
}
func back() -> Int {
    return queue.count == 0 ? -1 : queue[queue.count-1]
}


