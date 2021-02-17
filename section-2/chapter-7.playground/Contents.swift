import UIKit

// Modifying arrays: mini exercise
var players = ["Alice", "Bob", "Cindy", "Dan", "Eli"]
if let danPosition = players.firstIndex(of: "Dan") {
    print("Dan is at position \(danPosition)")
}
