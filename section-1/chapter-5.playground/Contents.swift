import UIKit


// Functions: mini-exercises
// 1
func printFullName (firstName: String, lastName: String) {
    print(firstName + " " + lastName)
}
printFullName(firstName: "Nicolas", lastName: "Lhomme")

// 2
func printFullName2 (_ firstName: String, _ lastName: String) {
    print(firstName + " " + lastName)
}
printFullName2("Nicolas", "Lhomme")

// 3
func calculateFullname (_ firstName: String, _ lastName: String) -> String {
    return firstName + lastName
    // firstname + lastname     => also works
}
let fullName = calculateFullname("Nicolas", "Lhomme")
print(fullName)

// 4
func calculateFullname2 (_ firstName: String, _ lastName: String) -> (fullName: String, nameLength: Int) {
    let fullName = firstName + lastName
    return (fullName, fullName.count)
}
let fullName2 = calculateFullname2("Nicolas", "Lhomme")
print(fullName2.fullName)
print(fullName2.nameLength)


// Commenting your functions:
/// Calculates the average of three values
/// - Parameters:
///   - a: The first value.
///   - b: The second value.
///   - c: The third value.
/// - Returns: The average of the three values.
func calculateAverage(of a: Double, and b: Double, and c: Double) -> Double {
    let total = a + b + c
    let average = total / 3
    return average
}
calculateAverage(of: 1, and: 3, and: 5)
// Start typing calculateAverage and see what happens:

// Or cmd + left click on calculateAverage, then "Show Quick Help"


// Challenges
// Challenge 1: Looping with stride functions
/*
 for index in stride(from: 10, to: 22, by: 4) {
   print(index)
 }
 // prints 10, 14, 18

 for index in stride(from: 10, through: 22, by: 4) {
   print(index)
 }
 // prints 10, 14, 18, and 22
*/

// The difference between the two strides funnction overload:
// with the stride "from:to:by", the "to" value is not included in the processing of the function
// with the stride "from:through:by", the "to" value is included in the processing of the function

for index in stride(from: 10.0, through: 9.0, by: 0.1) {
    print(index)
}

// Challenge 2: It's prime time:
func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    number % divisor == 0 ? true:false
}
isNumberDivisible(4, by: 4) // true
isNumberDivisible(4, by: 3) // false

func isPrime (_ number: Int) -> Bool {
    if number < 0 {
        fatalError("Fatal error: \(number)  not a prime number")
        }
    for index in stride(from: 2, to: number, by: 1) {
        if number % index == 0 {
            return false
        }
    }
    return true
}
isPrime(6) // false
isPrime(13) // true
isPrime(8893) // true

// Challenge 3: Recursive functions
func fibonacci(_ number: Int) -> Int {
    switch number{
    case 0:
        return 0
    case 1, 2:
        return 1
    default:
        return fibonacci(number - 1) + fibonacci(number - 2)
    }
}

fibonacci(1)  // = 1
fibonacci(2)  // = 1
fibonacci(3)  // = 2
fibonacci(4)  // = 3
fibonacci(5)  // = 5
fibonacci(10) // = 55
