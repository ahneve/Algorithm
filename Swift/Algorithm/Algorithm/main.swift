import Foundation

var input = 1000-Int(readLine()!)!
var JPY : [Int] = [500,100,50,10,5,1]
var result : Int = 0

for i in JPY {
    if (input >= i){
        result = result+(input/i)
        input = input-(input/i)*i
    }
}

print(result)
