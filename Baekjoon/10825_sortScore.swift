//
//  main.swift
//  algorithms_1
//
//  Created by Jeon Jimin on 2022/04/26.
//

import Foundation

struct StudentScore {
    let name: String
    let ko: Int
    let eng: Int
    let math: Int
}

let  count = Int(readLine()!)!
var student: [StudentScore] = []

for _ in 0..<count {
    let info = readLine()!.split(separator: " ").map{String($0)}
    student.append(StudentScore(name: info[0], ko: Int(info[1])!, eng: Int(info[2])!, math: Int(info[3])!))
}

let sorted = student.sorted { (first, second) -> Bool in
    if first.ko == second.ko {
        if first.eng == second.eng {
            if first.math == second.math{
                return first.name < second.name
            }else{
                return first.math > second.math
            }
        }
        else{
            return first.eng < second.eng
        }
    }else{
        return first.ko > second.ko
    }
}

for i in 0..<count {
    print(sorted[i].name)
}
