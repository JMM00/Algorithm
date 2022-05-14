//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

let length = Int(readLine()!)!
var arr = Set<String>()

for _ in 0..<length {
    arr.update(with: readLine()!)
}

let sorted = arr.sorted { (first, second) in
    if first.count == second.count{
        return first < second
    }else{
        return first.count < second.count
    }
}

for i in sorted{
    print(i)
}
