//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

let repitition = Int(readLine()!)!


//let length = Int(String(input[0]))
//let inputStr = String(input[1])
var strArr = [String] (repeating: "", count: repitition)

for index in 0..<repitition {
    let input = readLine()!.split(separator: " ")
    for str in String(input[1]){
        for _ in 0..<Int(String(input[0]))! {
            strArr[index] += String(str)
        }
    }
}
for i in 0..<repitition {
    print(strArr[i])
}


