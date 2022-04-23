//
//  main.swift
//  algorithmsTest
//
//  Created by Jeon Jimin on 2022/04/20.
//

import Foundation
let input = readLine()!.split(separator: " ").map{Int($0)!}
var graph = [[Int]] (repeating: [Int](), count: input[0]+1)
var visited = [Bool] (repeating: false, count: input[0]+1)
var queue: [Int] = []
//graph 생성
for _ in 0..<input[1] {
    let value = readLine()!.split(separator: " ").map{Int($0)!}
    graph[value[0]].append(value[1])
    graph[value[1]].append(value[0])
//    graph[value[0]].sort()
//    graph[value[1]].sort()
}
for i in 0..<graph.count {
    graph[i].sort()
}
dfs(idx: input[2])
print()
visited = [Bool] (repeating: false, count: input[0]+1)
bfs(idx: input[2])

func dfs(idx: Int) {
    visited[idx] = true
    print(idx, terminator: " ")
    for i in graph[idx]{
        if !visited[i] {
            dfs(idx: i)
        }
    }
}

func bfs(idx: Int) {
    queue.append(idx)
    visited[idx] = true
    while !queue.isEmpty{
        let v = queue[0]
        queue.removeFirst()
        print(v, terminator: " ")
        for i in graph[v]{
            if !visited[i] {
                queue.append(i)
                visited[i] = true
            }
        }
    }
}

