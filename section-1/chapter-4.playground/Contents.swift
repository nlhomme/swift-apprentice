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

