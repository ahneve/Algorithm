//
//  main.swift
//  Algorithm
//
//  Created by 소정의 Mac on 2023/01/08.
//

import Foundation

var input = Int(readLine()!)!
var result : Int = 0

solution(input)

func solution(_ input:Int) -> Int {
    var remain = 1000-input
    
    if(remain >= 500 ) {
        result += remain/500
        remain = remain - (remain/500)*500
    }
    if(remain >= 100 ) {
        result += remain/100
        remain = remain - (remain/100)*100
    }
    if(remain >= 50 ) {
        result += remain/50
        remain = remain - (remain/50)*50
    }
    if(remain >= 10 ) {
        result += remain/10
        remain = remain - (remain/10)*10
    }
    if(remain >= 5 ) {
        result += remain/5
        remain = remain - (remain/5)*5
    }
    
    print(result+remain)
    return result+remain
}

