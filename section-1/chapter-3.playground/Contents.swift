import UIKit

// Bool: mini-exercises
// 1
let myAge = 28
let isTeenager = myAge <= 13 && myAge >= 19

// 2
let theirAge = 30
let bothTeenager = isTeenager && (theirAge <= 13 && theirAge >= 19)

// 3
let reader = "Nicolas Lhomme"
let author = "Matt Galloway"
let authorIsReader = reader == author

// 4
let readerBeforeAuthor = reader < author


// Ternary conditional operator: mini exercises
// 1
let myAge2 = 28
let answer: Bool

if myAge2 <= 13 && myAge2 >= 19 {
    answer = true
} else {
    answer = false
}

// 2
let answer2 = (myAge2 <= 13 && myAge2 >= 19) ? true : false


// Loops: mini-exercises:
// 1
var counter = 0

while counter < 10 {
    print("Counter is \(counter)")
    counter += 1
}

// 2
var counter2 = 0
var roll = 0

repeat {
    roll = Int.random(in: 0...5)
    counter2 += 1
    print("After \(counter2) rolls, roll is \(roll)")
} while roll != 0


// Challenges
// Challenge1: Find the error
/*
let firstName = "Matt"

if firstName == "Matt" {
  let lastName = "Galloway"
} else if firstName == "Ray" {
  let lastName = "Wenderlich"
}
let fullName = firstName + " " + lastName
*/
// Error: "lastname" is created inside the if statement
// One the if statement finished, "lastName" is destroyed
// So "lastName" is out of scope

// Challenge 2: Boolean challenge
let answer3 = true && true // true
let answer4 = false || false // false
let answer5 = (true && 1 != 2) || (4 > 3 && 100 < 1) // true
let answer6 = ((10 / 2) > 3) && ((10 % 2) == 0) // true

// Challenge 3: Snakes and ladders
let currentPosition = 3
let diceRoll = Int.random(in: 1...6)
var nextPosition: Int = currentPosition + diceRoll

if nextPosition == 3 {
    nextPosition = 15
} else if nextPosition == 7 {
    nextPosition = 12
} else if nextPosition == 11 {
    nextPosition = 2
} else if nextPosition == 17 {
    nextPosition = 5
}

// Challenge 4: Number of days in a month
// not done because insanely hard at this point of the book
// More at https://github.com/sleeve/rw-swift-apprentice-5/blob/cc997b720caf8d32d9952624c2c402e9a43f7dc7/chapter3.playground/Contents.swift#L257

// Challenge 5: Next power of two
let number1 = Int.random(in: 1...50)
let next1 = number1 * number1

// Challenge 6: Triangular number
let number2 = Int.random(in: 1...50)
var triangularNumber = 0
var i = 1

while true {
    triangularNumber = triangularNumber + i
    i += 1
    if i == number2 {
        break
    }
}
print(triangularNumber)

// Challenge 7: Fibonacci


// Challenge 8: Make a loop


// Challenge 9: Dice roll table
