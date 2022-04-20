//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation

/*
func newAverageScore (scores: [Double], length: Int, max: Double) -> Double{
    var newScores: [Double] = []
    var average: Double = 0
    for i in 0..<length {
        newScores.append(scores[i]/max*100)
    }
    for i in 0..<length {
        average += newScores[i]
    }
    return average/Double(length)
}
let length = Int(readLine()!)!
let score: [Double] = readLine()!.split(separator: " ").map { Double(String($0))!}
var maxSocre = score.max()

let average = newAverageScore(scores: score, length: length, max: maxSocre!)
print(average)
*/

let length = Int(readLine()!)!
let score: [Double] = readLine()!.split(separator: " ").map { Double(String($0))!}

var sum: Double = 0
var maxSocre = score.max()!

for i in 0..<length {
    sum += score[i]/maxSocre*100
}
print (sum/Double(length))

