import UIKit

// Modifying arrays: mini-exercise
var players = ["Alice", "Bob", "Cindy", "Dan", "Eli"]
if let danPosition = players.firstIndex(of: "Dan") {
    print("Dan is at position \(danPosition)")
}

// Iterating through an array: mini-exercise
var scores = [2, 2, 8, 6, 7]
for (index, player) in players.enumerated() {
    print("\(player) has scored \(scores[index]) point(s)")
}


// Modifying dictionaries: mini-exercise
var bobData = [
    "name": "Bob",
    "profession": "Card player",
    "country": "USA",
    "state": "CA",
    "city": "San Francisco"
]

func playerLocation (for player: [String:String]) {
    if let city = player["city"], let state = player["state"] {
            print(city, "-", state)
        
    }
}
playerLocation(for: bobData)


// Challenges
// Challenge 1: Which is valid
var array1 = [Int]() // Is valid after chek, but that syntax isn't written in the chapter...
let array2 = [] // Not valid: type must be precised
let array3: [String] = [] // Is valid

let array4 = [1, 2, 3]
print(array4[0]) // Valid
print(array4[5]) // Not valid: index out of range
array4[1...2] // Valid
array4[0] = 4 // Not valid: array4 is a constant
array4.append(4) // Not valid: array4 is a constant

var array5 = [1, 2, 3]
array5[0] = array5[1]  // Valid
array5[0...1] = [4, 5] // Valid
array5[0] = "Six" // Not valid: type must be Int
array5 += 6  // Not valid: correct statement would be 'array5 += [6]'
for item in array5 { print(item) } // Valid

// Challenge 2: Remove the first number
func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    var newArray = array
    guard let indexToRemove = newArray.firstIndex(of: item) else { return newArray }
    newArray.remove(at: indexToRemove)
    return newArray
    
}
