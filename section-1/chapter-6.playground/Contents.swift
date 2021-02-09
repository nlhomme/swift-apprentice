import UIKit


// Introducing optionals: mini-exercises
// 1
var myFavoriteSong: String? = "Careless Whispers"

// 2
let parsedInt = Int("10")
// parsedInt is an optional if the parsed String is "" or not a String, parsedInt equals nil

// 3
let parsedInt3 = Int("cat") // equals nil


// Unwrapping optionnals: mini-exercises
// 1
if let myFavoriteSong = myFavoriteSong {
    print(myFavoriteSong)
} else {
    print("No favorite song")
}

// 2
myFavoriteSong = nil
if let myFavoriteSong = myFavoriteSong {
    print(myFavoriteSong)
} else {
    print("No favorite song")
}
