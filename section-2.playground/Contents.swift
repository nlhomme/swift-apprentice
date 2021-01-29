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

