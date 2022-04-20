//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

let n = Int(readLine()!)!
let remainN = n % 3
let quotient = n/3
var result: Int = 0
switch remainN {
case 0:
    result = (quotient/5)*3 + (quotient%5)
case 1:
    if quotient - 3 < 0 {
        result = -1
    }else{
        result = ((quotient-3)/5)*3 + (quotient-3)%5 + 2
    }
case 2:
    if quotient - 1  < 0 {
        result = -1
    }else {
        result = ((quotient-1)/5)*3 + (quotient-1)%5 + 1
    }
        
default:
    break
}
print(result)

