//
//  main.swift
//  RPS
//
//  Created by Арслан on 01.12.2021.
//

import Foundation

print("Please make your choice!")

enum Choises: Int {
    case rock = 1
    case paper = 2
    case scissors = 3
}

let name = readLine()!

func sw(x: String) -> Int{
    if x == "rock" {
        return 1
    }
    else if x == "paper" {
        return 2
    }
    else {
        return 3
    }
}

var n = sw(x: name)

var randomInt = Int.random(in: 1...3)

func emp(x: Int, y: Int) -> String{
    if x == 1 && y == 3 || x == 2 && y == 1 || x == 3 && y == 2{
        return "You won!"
    }
    
    else {
        return "Computer won!"
    }
}

print(emp(x: n, y: randomInt))
