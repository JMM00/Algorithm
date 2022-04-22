//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

//주어질 카드 수 , 카드의 합
var input: [Int] = readLine()!.split(separator: " ").map{ Int(String($0))! }
//카드 개수
var inputCard: [Int] = readLine()!.split(separator: " ").map{ Int(String($0))! }
let length = inputCard.count
var max = 0

for i in 0..<length {
    for j in 0..<length{
        for k in 0..<length {
            if inputCard[i] != inputCard[j]
                && inputCard[i] != inputCard[k]
                && inputCard[j] != inputCard[k]{
                
                let result = inputCard[i] + inputCard[j] + inputCard[k]
                if result <= input[1] && result > max {
                    max = result
                }
            }
        }
    }
}
print(max)
