import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}

let N = input[0] // 1부터 N까지의 자연수 중
let M = input[1] // 중복 없이 M개를 고른 수열

//var visitedArray = Array(repeating: false, count: N+1)
var count : Int = 0
var stack = [Int]()

func backTracking(count: Int) {
    if count == M {
        print(stack.map{String($0)}.joined(separator: " "))
    } else {
        for i in 1...N {
            //if !visitedArray[i]{
                //visitedArray[i] = true
                stack.append(i)
                backTracking(count: count+1)
                //visitedArray[i] = false
                stack.removeLast()
            //}
        }
    }
}

backTracking(count: count)
