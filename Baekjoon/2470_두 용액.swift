let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
arr.sort()

var left = 0
var right = N-1

var minValue = Int.max
var output: [Int] = []

while left < right {
    let result = arr[left]+arr[right]
    
    if minValue > abs(result) {
        minValue = abs(result)
        output = [arr[left],arr[right]]
    }
    minValue = min(abs(result), minValue)
    if result > 0 {
        right -= 1
    } else if result < 0 {
        left += 1
    } else {
        output = [arr[left],arr[right]]
        break
    }
}
print(output[0], output[1])
