//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

let input = readLine()?.split(separator: " ").map{Int(String($0))!}

func gbc(p: Int, q: Int) -> Int {
    if (q == 0) {return p}
    else { return gbc(p: q, q: p%q)}
}
let gcm = gbc(p: input![0], q: input![1])
let lcm = (input![0] * input![1]) / gcm
print(gcm)
print(lcm)



