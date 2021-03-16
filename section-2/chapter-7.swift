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

// Challenge 3: Remove the numbers
func removing(_ item: Int, from array: [Int]) -> [Int]{
    var newArray: [Int] = []
    for value in array {
        if value != item {
            newArray.append(value)
        }
    }
    return newArray
}

// Challenge 4: Reverse an array
// Here is my answer:
/*
 func reversed(_ array: [Int]) -> [Int] {
     var newArray: [Int] = []
     for index in array {
         var reversedIndex = array.count - index
         newArray.append(array[reversedIndex])
     }
     return newArray
 }
*/
// For reasons I don't know, it works only if array contains numbers following each others

// Here is the official answer from the Ray Wenderlich team:
func reversed(_ array: [Int]) -> [Int] {
  var newArray: [Int] = []
  for item in array {
    newArray.insert(item, at: 0)
  }
  return newArray
}
// Starting the scond iteration, values are inserted at index 0 in newArray, so the the existing values are moved to the next index, and so on...
// Source:
// https://github.com/raywenderlich/sa-materials/blob/daf048726b6ff2223a509282985adbe08133acfb/07-arrays-dictionaries-sets/projects/challenge/arrays-dictionaries-sets-challenges.playground/Contents.swift#L101

// Challenge 5: Return the middle
func middle(_ array: [Int]) -> Int? {
    if array.isEmpty {
        return nil
    } else {
        return array[(array.count / 2) - 1]
    }
}
// The official answer is false because for an array with 4 element, it return the value of index 3 instead of the value of index 2
// officiel answer:
// https://github.com/raywenderlich/sa-materials/blob/daf048726b6ff2223a509282985adbe08133acfb/07-arrays-dictionaries-sets/projects/challenge/arrays-dictionaries-sets-challenges.playground/Contents.swift#L119

// Challenge 6: Find the minimum and maximum:
func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    if numbers.isEmpty {
        return nil
    }
    
    var minimum = 10000
    var maximum = -10000
    for value in numbers {
        if value < minimum {
            minimum = value
        } else {
            maximum = value
        }
    }
    return (minimum, maximum)
}

// Challenge 7: Which is valid?
/*
 let dict1: [Int, Int] = [:] // not valid, the correct statement for that is the third one
 let dict2 = [:] // not valid, type cannot be infered
 let dict3: [Int: Int] = [:] // valid
*/

let dict4 = ["One": 1, "Two": 2, "Three": 3]
/*
 dict4[1] // not valid, you work on dictionaries using keys, not values
 dict4["One"] // valid
 dict4["Zero"] = 0 // NOT valid: the dictionary is a constant
 dict4[0] = "Zero" // you call a dictionary with keys, not values + the dictionary is a constant
*/


/*
 dict5["NY"] // valid. The statement is technically correct, you can put it on a print() for example
 dict5["WA"] = "Washington" // valid
 dict5["CA"] = nil // valid
*/

// Challenge 8: Long names
func longNames (_ dictionary: [String:String]) {
    // for (code, name) in dictionary {
    for (_, name) in dictionary {
        if name.count > 8 {
            print(name)
        }
    }
}

// Challenge 9: Merge dictionaries
    func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
        var newDictionary = dict1
        for (key2, value2) in dict2 {
            newDictionary[key2] = value2
        }
        return newDictionary
    }

// Challenge 10: Count the characters
func occurrencesOfCharacters(in text: String) -> [Character: Int] {
    var occurences: [Character:Int] = [:]
    for letter in text {
        // Decapsulate occurences[letter] to occurence
        // Then if occurence is not nil it means that the letter is already counted in the dictionary
        if let occurence = occurences[letter] {
            // So we incremement the occurence counter
            occurences[letter] = occurence + 1
        // Else, it means that it's the first time we count the letter
        } else {
            occurences[letter] = 1
        }
    }
    return occurences
}

// Challenge 11: Uniques values
func isInvertible(_ dictionary: [String: Int]) -> Bool {
    var set: Set<Int> = []
    for (_, value) in dictionary {
        if set.contains(value){
            return false
        } else {
            set.insert(value)
        }
    }
    return true
}

// Challenge 12: Removing keys and setting values to nil
var nameTitleLookup: [String: String?] = ["Mary": "Engineer", "Patrick": "Intern", "Ray": "Hacker"]
nameTitleLookup.updateValue(nil, forKey: "Patrick")
nameTitleLookup["Ray"] = nil
