let T = Int(readLine()!)!
var result: [Int] = [0,1,2,4]

for _ in 0..<T {
    print(getCount(Int(readLine()!)!))
}


func getCount(_ i: Int) -> Int {
    var start = result.count - 1
    
    while start < i {
        let count = result[start] + result[start-1] + result[start-2]
        result.append(count)
        start += 1
    }
    
    return result[i]
}
