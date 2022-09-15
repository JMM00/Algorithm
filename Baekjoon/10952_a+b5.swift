//
//  main.swift
//  algorithmTest
//
//  Created by 전지민 on 2022/09/16.
//

import Foundation


while (true) {
    let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
    if arr[0] == 0 && arr[1] == 0 {
        break
    }else {
        print(arr[0]+arr[1])
    }
}
