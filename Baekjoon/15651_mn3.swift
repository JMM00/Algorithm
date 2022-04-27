//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

//N, M 순서대로 입력받음
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let m = input[1]
var selected :[Int] = []
var result: String = ""

recFunc(k: 0)

print(result)

func recFunc (k: Int) {
    if k == m {
        result += selected.map{String($0)}.joined(separator: " ")
        result += "\n"
        
    }else {
        for j in 1...n {
            selected.append(j)
            recFunc(k: k+1)
            selected.removeLast()
        }
    }
}


