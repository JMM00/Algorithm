//
//  main.swift
//  swiftCodeTest
//
//  Created by Jeon Jimin on 2022/04/19.
//

import Foundation

let a: [Double] = readLine()!.split(separator: " ").map { Double(String($0))!}
print(a[0]/a[1])

