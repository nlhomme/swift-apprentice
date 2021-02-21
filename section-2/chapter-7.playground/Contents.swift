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

