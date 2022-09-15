//
//  main.swift
//  algorithmTest
//
//  Created by 전지민 on 2022/09/16.
//

import Foundation


while let input = readLine() {
    let arr = input.split(separator: " ").map{Int(String($0))!}
    print(arr[0]+arr[1])
}
