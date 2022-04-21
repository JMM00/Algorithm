//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

var repetition = Int(readLine()!)!

for _ in 0..<repetition {
    var result:Int = 0
    let input = readLine() ?? ""
    
    for i in input {
        // ) 으로 시작하지만 짝수개인 경우 )시작하는 것 예외처리하기
        if i == "("{
            result += 1
        }else{
            if result == 0 {
                result -= 1
                break
            }
            result -= 1
        }
    }
    print(result==0 ? "YES" : "NO")
}
