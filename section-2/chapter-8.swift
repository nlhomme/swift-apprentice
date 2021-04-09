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

// Challenge 2: Closures sums
// It took the solution as is, I unsterstood nothing on this challenge... :(
func mathSum(length: Int, series: (Int) -> Int) -> Int {
    var result = 0
    for i in 1...length {
        result += series(i)
    }
    return result
}

mathSum(length: 10) { number in
    number * number
}

// Challenge 3: Functionnal rating
let appRatings = [
    "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
    "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
    "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]

var averageRatings: [String:Int] = [:]
appRatings.forEach {
    let total = $0.value.reduce(0, +)
    averageRatings[$0.key] = (total / $0.value.count)
}
//print(averageRatings)

let goodApps = averageRatings.filter {
    $0.value > 3
}.map{
    $0.key
}
//print(goodApps)
