//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let l = input[0]
let c = input[1]
var alphabet = readLine()!.split(separator: " ").map{String($0)}

var used = [Bool] (repeating: false, count: 16)
var result: String = ""
var resultArr:[String] = []

var countV = 0

alphabet.sort()

recFunc(0)

var start: Int = 0

func recFunc(_ value : Int) {
    if value == l {
        for i in 0..<l {
            if resultArr[i] == "a" || resultArr[i] == "e" || resultArr[i] == "i" || resultArr[i] == "o" || resultArr[i] == "u" {
                countV += 1
            }
            result += resultArr[i]
        }
          
        if countV >= 1 && l-countV >= 2 {
            print(result)
        }
        result = ""
        countV = 0
        return
    }else{
        for i in start..<c {
            if !used[i] {
                used[i] = true
                resultArr.append(alphabet[i])
                start = i
                recFunc(value+1)
                resultArr.removeLast()
                used[i] = false
            }
        }
    }
}
