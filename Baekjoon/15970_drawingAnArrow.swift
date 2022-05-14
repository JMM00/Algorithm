//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let length = Int(readLine()!)!
var arr = [(Int, Int)] ()
var result = [Int] (repeating: 0, count: length)

for _ in 0..<length {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    arr.append((input[0], input[1]))
}

let sorted = arr.sorted { (first, second) in
    if (first.1 == second.1){
        return first.0 < second.0
    }else{
        return first.1 < second.1
    }
    
}

var cnt = 0

for i in 1..<length {
    if sorted[i-1].1 != sorted[i].1 {
        if cnt == 0 {
            result[i-1] = 0
        }else {
            result[i-1] = sorted[i-1].0 - sorted[i-2].0
        }
        cnt = 0
    }else{
        cnt += 1
        if cnt == 1{
            result[i-1] = sorted[i].0 - sorted[i-1].0
        }else{
            result[i-1] = min(sorted[i].0-sorted[i-1].0, sorted[i-1].0-sorted[i-2].0)
        }
    }
}

if cnt == 0 {
    result[length-1] = 0
}else{
    result[length-1] = sorted[length-1].0 - sorted[length-2].0
}
var sum = 0
for i in result {
    sum += i
}

print(sum)
