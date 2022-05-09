//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

//연산자 끼워넣기


import Foundation

let input = Int(readLine()!)!

let inputSeq = readLine()!.split(separator: " ").map{Int(String($0))!} //수열 입력
var inputOpe = readLine()!.split(separator: " ").map{Int(String($0))!} // 연산자 입력

var count = 0
for i in 0..<inputOpe.count {
    count += inputOpe[i]
}

var (max, min) = (Int.min, Int.max)

recFunc(idx: 1, nextNum: inputSeq[0])

print(max)
print(min)

func recFunc(idx: Int, nextNum: Int) {
    var value = 0
    if idx == count+1 {
        max = max < nextNum ? nextNum : max
        min = min > nextNum ? nextNum : min
    }else{
        for i in 0..<4 {
            if inputOpe[i] != 0 {
                inputOpe[i] -= 1
                switch i {
                case 0:
                    value = nextNum + inputSeq[idx]
                case 1:
                    value = nextNum - inputSeq[idx]
                case 2:
                    value = nextNum * inputSeq[idx]
                case 3:
                    value = nextNum / inputSeq[idx]
                default:
                    break
                }
                recFunc(idx: idx+1, nextNum: value)
                inputOpe[i] += 1
            }
            
        }
    }
}
