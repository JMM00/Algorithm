//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (input[0], input[1])
var notHear = [String] ()
var notSee = [String] ()
var result = [String] ()

for _ in 0..<n {
    notHear.append(readLine()!)
}
for _ in 0..<m {
    notSee.append(readLine()!)
}

notHear.sort()
notSee.sort()

for i in 0..<m {
    var left = 0
    var right = n-1
    var mid:Int
    
    while left <= right {
        mid = (left+right)/2
        
        if notSee[i] < notHear[mid] {
            right = mid-1
        }else if notSee[i] > notHear[mid] {
            left = mid+1
        }else{
            result.append(notSee[i])
            break
        }
    }
}

print(result.count)
for i in 0..<result.count {
    print(result[i])
}
