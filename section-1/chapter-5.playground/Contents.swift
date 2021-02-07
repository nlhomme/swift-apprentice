import UIKit


// Functions: mini-exercises
// 1
func printFullName (firstName: String, lastName: String) {
    print(firstName + " " + lastName)
}
printFullName(firstName: "Nicolas", lastName: "Lhomme")

// 2
func printFullName2 (_ firstName: String, _ lastName: String) {
    print(firstName + " " + lastName)
}
printFullName2("Nicolas", "Lhomme")

// 3
func calculateFullname (_ firstName: String, _ lastName: String) -> String {
    return firstName + lastName
    // firstname + lastname     => also works
}
let fullName = calculateFullname("Nicolas", "Lhomme")
print(fullName)

// 4
func calculateFullname2 (_ firstName: String, _ lastName: String) -> (fullName: String, nameLength: Int) {
    let fullName = firstName + lastName
    return (fullName, fullName.count)
}
let fullName2 = calculateFullname2("Nicolas", "Lhomme")
print(fullName2.fullName)
print(fullName2.nameLength)
