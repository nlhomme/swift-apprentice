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
