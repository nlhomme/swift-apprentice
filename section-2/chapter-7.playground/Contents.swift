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
