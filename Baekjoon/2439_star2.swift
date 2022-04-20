//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

let length = Int(readLine()!)!
//stride(..to:n..) n-1까지 stride(..through:n..) n까지
for i in 1...length {
    for _ in stride(from: 1, through: length-i, by: 1){
        print(" ",terminator: "")
    }
    for _ in 1...i{
        print("*",terminator: "")
    }
    print()
}
/*
//오류 1...0인 경우가 생겨서 오류남
let length = Int(readLine()!)!
for i in 1...length {
    for j in 1...(length-i){
        print(" ",terminator: "")
    }
    for j in 1...i{
        print("*",terminator: "")
    }
    print()
}
*/


