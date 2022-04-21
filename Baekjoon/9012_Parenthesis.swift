//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

var repetition = Int(readLine()!)!

for _ in 0..<repetition {
    let input = readLine()!
    var inputList = input.unicodeScalars.map(String.init)
    var count = 0

    while(true) {
        if count >= inputList.count {
            if inputList.isEmpty {
                print("YES")
            }
            else{
                print("NO")
            }
//            print(inputList.isEmpty ? "YES" : "NO" )
            break
        }
        if count == 0 && inputList[0] != "(" {
            print("NO")
            break
        }
        if inputList[count] == "(" {
            count += 1
        }else{
            inputList.remove(at: count)
            inputList.remove(at: count-1)
            count = 0
        }
    }
}
