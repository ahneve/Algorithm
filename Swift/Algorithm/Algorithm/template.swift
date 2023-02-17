/*
 
 let input = readLine()!.split(separator: " ").map { Int(String($0))! }
 let n = input[0]
 let m = input[1]

 var visited = Array(repeating: false, count: n + 1)
 var depth: Int = 0

 var stack: [Int] = []

 func result(depth: Int) {
     if depth == m {
         print(stack.map{String($0)}.joined(separator: " "))
         return
     }else {
         for i in 1...n {
             if !visited[i]{
                 visited[i] = true
                 stack.append(i)
                 result(depth: depth + 1)
                 visited[i] = false
                 stack.removeLast()

             }
         }
     }

 }

 result(depth: depth)
 
 */


/*
 4 4를 입력했다고 치자.

 아래 코드를 실행하게 되면,

 result(0)

 depth = 0, visitied[1] = false -> visited[1] = true, stack = [1]

 result(1)

 depth = 1, visitied[1] = true니까 다시 for문 -> visited[2] = false -> visited[2] = true, stack = [1, 2]

 result(2)

 depth = 2, visitied[1]과 visited[2] = true니까 다시 for문 -> visited[3] = false -> visited[3] = true, stack = [1, 2, 3]

 result(3)

 depth = 3, visited[1]과 visited[2]와 visited[3]은 true니까 다시 for문 -> visited[4] = false -> visited[4] = true, stack = [1, 2, 3, 4]

 result(4)

 depth = 4, if문에 걸려서 print하고 리턴
 
 
 그럼 result(3)에서 i는 4인 상태에서 result(4)를 실행했기 때문에, visited[4] = false가 되고 stack = [1, 2, 4] 이 된다.

 이제, result(3)은 모든 일을 끝마쳤으니 리턴이나 마찬가지고 남은 함수스택은 result(2)와 result(1)과 result(0)이다.

  

 result(2)에서 i는 3인 상태에서 reuslt(3)을 실행했기 때문에, visited[3] = false, stack = [1, 2]가 된다.

 그리고 i = 4일 때, visited[4] = true고 stack = [1, 2, 4]가 되게 된다.

 그렇게 result(3)이 시작되고 for문에서 유망하지 않은노드(이미 방문해서 또 방문하면 중복이 되는노드)를 if문으로 거르고

 visited[3] = true, stack = [1, 2, 4, 3]이 되게된다.
 */
