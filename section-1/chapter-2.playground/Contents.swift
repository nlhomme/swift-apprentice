import UIKit

let typeInferredInt = 42

let typeInferredDouble = 3.14159


// Type Inference: mini-exercises
// 1
let age1 = 42 // Int
let age2 = 21 // Int

// 2
let avg1 = (age1 + age2) / 2
// avg1 is a Int, equals 31
// Result is wrong because (42 + 21) / 2 = 31.5 != avg1

// 3
let avg2 = (Double(age1) + Double(age2)) / 2
// age2 is a Double, equals 31.5
// avg2 is correct because (42 + 21) / 2 = 31.5 = avg2


// Type String: mini-exercises
// 1
let firstName = "Nicolas"
let lastName = "Lhomme"

// 2
let fullName = firstName + " " + lastName

// 3
let myDetails = "Hello, my name is \(fullName)"


// Tuples: mini exercises
// 1
let date: (Int, Int, Int, Int) = (01, 30, 2021, 11)

// 2
let date2: (month: Int, day: Int, year:Int, averageTemperature:Int) = (01, 30, 2021, 11)

//3
let (_, readDay, _, readAverageTemperature) = date2
print(readDay)
print(readAverageTemperature)

//4
var date3 = (month: 01, day: 30, year: 2021, averageTemperature: 11)
date3.averageTemperature = 10
print(date3.averageTemperature)


// Challenges
// Challenge 1: Coordinates
let coordinates: (Int, Int) = (2, 3)

// Challenge 2: Names coordinate
let namedCoordinate: (row: Int, column: Int)

// Challenge 3: Which are valid?
// let character: Character = "Dog" // not valid because type "Character" allows only one character
let character2: Character = "🐶" // valid
let string: String = "Dog"  // valid
let string2: String = "🐶"  // valid

// Challenge 4: Does it compile?
let tuple = (day: 15, month: 8, year: 2015)
// let day = tuple.Day // does not compile because tuple has a member named "day" instead of "Day"

// Challenge 5: Find the error
let name = "Matt"
// name += " Galloway" // name is a contstant, we can't add data

// Challenge 6: What is the type of "value"?
let tuple2 = (100, 1.5, 10)
let value = tuple2.1 // "value" is a Double

// Challenge 7: What is the value of month?
let tuple3 = (day: 15, mont: 8, year: 2015)
let month = tuple3.mont // month is an Int

//Challenge 8: What is the value of "summary"?
let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)" // summary is a String

// Challenge 9: Compute the value
let a = 4
let b: Int32 = 100
let c: UInt8 = 12
let sum = a + Int(b) + Int(c) // "sum" equals 116

// Challenge 10: Different precision pi s
print(Double.pi)
print(Float.pi)
/*
The differences between "Double.pi" and "Float.pi" are:
- The type "Float" use half the memory to store the value than "Double"
- In consequence "Float.pi" is way less precise by showing less number after the comma
*/

