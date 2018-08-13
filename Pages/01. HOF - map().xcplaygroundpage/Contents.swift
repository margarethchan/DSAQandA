//: [Previous](@previous)
import Foundation
/*:
 # Higher Order Functions (HOF)
 [Medium Article](@https://medium.com/@vishwasng/swift-higher-order-function-and-its-uses-d363eb5cc635)
 */
//: # map()
//: ## Strings
let houseName: [String] = ["starks", "lannisters", "targaryens", "baratheon", "arryn"]
//: ### Count Characters in each Name
func characterCount(house:[String]) -> [Int] {
    var characterCountArray = [Int]()
    for item  in house {
        characterCountArray.append(item.count)
    }
    return characterCountArray
}
let houseCharacterCount = characterCount(house: houseName)
//: ### Count Number of Characters in each Name (HOF)
let mappedHouseCount = houseName.map{$0.count}
mappedHouseCount
//: ### Capitalize Characters in each Name
let upperCaseHouse = houseName.map { $0.uppercased()}
upperCaseHouse
//: ## Ints
let numberArray:[Int] = [2,5,10,15,20]
//: ### Find the factorial of each number
extension Int {
    func factorial() -> Int {
        var fact: Int = 1
        for i in 1...self {
            fact = fact * i
        }
        return fact
    }
}
let factorialResult = numberArray.map{$0.factorial()}
factorialResult

//: [Next](@next)
