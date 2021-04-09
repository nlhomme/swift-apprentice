import UIKit

// Iteration with closures: mini-exercises
// 1
let names = ["Jacques", "Lionel", "Edouard", "Jean-Pierre", "Dominique", "Eric"]
let allNames = names.reduce("") {
    $0 + $1
}
// print(allNames)

// 2
let allLongNames = names.filter{$0.count > 4}.reduce("") {
    $0 + $1
}
// print(allLongNames)

// 3
let namesAndAges = ["Jacques": 42, "Lionel": 53, "Edouard": 39, "Jean-Pierre": 17, "Dominique": 72, "Eric": 2]

let underageOnly = namesAndAges.filter {
    $0.value < 18
}
// print(underageOnly)

// 4
let adultsOnlyNames = namesAndAges.filter {$0.value >= 18}.map {
    $0.key
}
//print(adultsOnlyNames)


// Challenges
// Challenge 1: Repeating yourself
func repeatTask(times: Int, task: () -> Void) {
    for i in 0...times {
        task()
        }
    }

repeatTask(times: 10) {
    print("Swift apprentice is a great book!")
}

