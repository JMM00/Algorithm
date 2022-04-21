//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

var stackArr: [Int] = []

func empty() -> Int {
    let result:Int
    if stackArr.count == 0 {
        result = 1
    }
    else {
        result = 0
    }
    return result
}

let repetition: Int = Int(readLine()!)!

for _ in 0..<repetition {
    let input = readLine()!.split(separator: " ").map{String($0)}
    switch input[0] {
    case "push":
        stackArr.append(Int(input[1])!)
        
    case "size":
        print(stackArr.count)
        
    case "pop":
        switch empty() {
        case 0:
            let index = stackArr.count-1
            print(stackArr[index])
            stackArr.remove(at: index)
        default:
            print(-1)
        }
    case "empty":
        print(empty())
        
    case "top":
        switch empty() {
        case 0:
            let index = stackArr.count-1
            print(stackArr[index])
        default:
            print(-1)
        }
    default:
        break
    }
}
