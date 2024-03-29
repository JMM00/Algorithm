let n = Int(readLine()!)!
var inputPlus: [Int] = []
var inputMinus: [Int] = []
var inputOne = 0

for _ in 0..<n {
    let input = Int(readLine()!)!
    if input > 1 {
        inputPlus.append(input)
    } else if input <= 0 {
        inputMinus.append(input)
    } else {
        inputOne += 1
    }
}
inputMinus.sort()
inputPlus.sort(by:>)

var sum = 0
for i in stride(from: 0, to: inputPlus.count-1, by: 2) {
    sum += inputPlus[i] * inputPlus[i+1]
}
if inputPlus.count % 2 == 1 {
    sum += inputPlus.last!
}

for i in stride(from: 0, to: inputMinus.count-1, by: 2) {
    sum += inputMinus[i] * inputMinus[i+1]
}
if inputMinus.count % 2 == 1 {
    sum += inputMinus.last!
}


print(sum + inputOne)
