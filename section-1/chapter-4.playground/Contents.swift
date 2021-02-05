import UIKit

// For loops: mini-exercises
// 1
let range = 1...10

for i in range {
    print(i * i)
}

//2
for j in range {
    print(sqrt(Double(j)))
}

//3
var sum = 0
for row in 0..<8 where (row % 2 != 0) {
  for column in 0..<8 {
    sum += row * column
  }
    print(sum)
}


// Switch statements: mini-exercises
// 1
let age = Int.random(in: 0...100)
print(age)

switch age {
case 0...2:
    print("Infant")
case 3...12:
    print("Child")
case 13...19:
    print("Teenager")
case 20...39:
    print("Adult")
case 40...60:
    print("Middle-aged")
default:
    print("Elderly")
}

// 2
let tuple = (name:"nicolas", age:Int.random(in: 0...100))
print(tuple.age)

switch tuple {
case (_, 0...2):
    print(tuple.name, "is a infant")
case (_, 3...12):
    print(tuple.name, "is a child")
case (_, 13...19):
    print(tuple.name, "is a teenager")
case (_, 20...39):
    print(tuple.name, "is an adult")
case (_, 40...60):
    print(tuple.name, "is a middle-aged")
default:
    print(tuple.name, "is an ederly")
}


// Challenges
// Challenge 1: How many times
/*
var sum = 0
 for i in 0...5 {
   sum += i
 }
*/
// The iteration will happen 6 times.

// Challenge 2: Count the letter
/*
var aLotOfAs = ""
while aLotOfAs.count < 10 {
 aLotOfAs += "a"
}
*/
// aLotOfAs contains 10 "a"

// Challenge 3: What will print
/*
switch coordinates {
case let (x, y, z) where x == y && y == z:
 print("x = y = z")
case (_, _, 0):
 print("On the x/y plane")
case (_, 0, _):
 print("On the x/z plane")
case (0, _, _):
 print("On the y/z plane")
default:
 print("Nothing special")
}
*/

//let coordinates = (1, 5, 0) // prints "On the x/y plane"
//let coordinates = (2, 2, 2) // prints "x = y = z"
//let coordinates = (3, 0, 1) // prints "On the x/z plane"
//let coordinates = (3, 2, 5) // prints "Nothing special"
//let coordinates = (0, 2, 4) // prints "On the y/z planee"

// Challenge 4: Closed range size
// A closed range cannot be empty because it should onclude a start and an end value

// Challenge 5: The final countdown
for i in 0...10 {
    print(10 - i)
}

// Challenge 6: Print a sequence
for i in 0...10 {
    print(Double(i) / 10)
}

