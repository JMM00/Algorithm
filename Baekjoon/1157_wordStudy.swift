//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

var voc = readLine()!.uppercased()
var vocArray = Array(voc)
vocArray.sort()

var count = 1
var maxCount = 0
var result = "?"

if(vocArray.count < 2) {
    result = String(vocArray[0])
}else {
    for i in 1...vocArray.count-1 {
        if vocArray[i-1] != vocArray[i] {
            
            if maxCount < count {
                maxCount = count
                result = String(vocArray[i-1])
            }
            else if maxCount == count {
                result = "?"
            }
            count = 1
        }else{
            count += 1
        }
        if i == vocArray.count-1 {
            if maxCount < count {
                maxCount = count
                result = String(vocArray[i-1])
            }
            else if maxCount == count {
                result = "?"
            }
        }
        
    }
}

print(result)
