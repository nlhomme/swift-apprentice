import UIKit


// Introducing optionals: mini-exercises
// 1
var myFavoriteSong: String? = "Careless Whispers"

// 2
let parsedInt = Int("10")
// parsedInt is an optional if the parsed String is "" or not a String, parsedInt equals nil

// 3
let parsedInt3 = Int("cat") // equals nil


// Unwrapping optionnals: mini-exercises
// 1
if let myFavoriteSong = myFavoriteSong {
    print(myFavoriteSong)
} else {
    print("No favorite song")
}

// 2
myFavoriteSong = nil
if let myFavoriteSong = myFavoriteSong {
    print(myFavoriteSong)
} else {
    print("No favorite song")
}


// Challenges
// Challenge 1: You be the compiler
var name: String? = "Ray"  // true
var age: Int = nil  // false, a "?" is missing after the type
let distance: Float = 26.7  // true
var middleName: String? = nil  //true

// Challenge 2: Divide and conquer
func divideIfWhole (_ value: Int, by divisor: Int) -> Int? {
    if value % divisor == 0 {
        let result = value / divisor
        return result
    } else{
        return nil
    }
}
if let answer = divideIfWhole(10, by: 2) {
    print("Yep, it returns \(answer) times.")
} else {
    print("Not divisible :[.")
}

if let answer = divideIfWhole(10, by: 3) {
    print("Yep, it returns \(answer) times.")
} else {
    print("Not divisible :[.")
}

// Challenge 3: Refactor and reduce
let answer3 = divideIfWhole(10, by: 2) ?? 0
print("It divides \(answer3) times.")

let answer3bis = divideIfWhole(10, by: 3) ?? 0
print("It divides \(answer3bis) times.")

// Challenge 4: Nested optionals
let number: Int??? = 10
// 1
print(number!!!)
// 2
if let number = number {
    if let number = number {
        if let number = number {
            print(number)
        }
    }
}
// 3
func printNumber(_ number: Int???) {
    guard let number3 = number, let number2 = number3, let number1 = number2 else {
        print("false")
        return
    }
    print(number1)
}
printNumber(number)
