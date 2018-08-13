//: [Previous](@previous)
import Foundation
/*:
 ## 29 - Fewest Coins - Need to find recursive solution
 > You are given coins of different denominations and a total amount of money amount. Write a function to compute the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.
  - Example:
 coins = [1, 2, 5], amount = 11\
 return 3 (11 = 5 + 5 + 1)\
 
 
  - Example:
coins = [2], amount = 3\
 return -1.\
 \
 Note:\
 You may assume that you have an infinite number of each kind of coin.
 */
//: PRACTICE



//: SOLUTION
var coins = [1, 5, 10, 25]
var coinsFail = [5, 25]
var total = 147

// iterative
func fewestCoinCombo(using coins: [Int], toFind total: Int) -> Int {
    var numOfCoins = 0
    var coinDict = [Int: Int]()
    var currentIndex = 0
    var total = total
    let coins = coins.sorted{$0>$1}
    while total > 0 && currentIndex < coins.count {
        if total - coins[currentIndex] >= 0 {
            total -= coins[currentIndex]
            numOfCoins += 1
            coinDict[coins[currentIndex]] = coinDict[coins[currentIndex], default: 0] + 1
            print(coinDict, total)
        } else {
            if currentIndex == coins.count - 1 && total > 0 { print("no clean combo");return -1 }
            currentIndex += 1
        }
    }
    print("number of coins: \(numOfCoins)")
    return numOfCoins
}


fewestCoinCombo(using: coins, toFind: total)
print("---")
fewestCoinCombo(using: coinsFail, toFind: total)

// nope
//func fewestCoins(in coins: inout [Int], toFind total: inout Int) -> Int? {
//    var numOfCoins = 0
//    var coins = coins.sorted{$0<$1}
//    while total >= 0 && (total - coins.last! >= 0) {
//        total -= coins.last!
//        numOfCoins += 1
//        print(total)
//    }
//    guard (total - coins.last! > 0) else { return -1 }
//    return numOfCoins + fewestCoins(in: &coins, toFind: &total)!
//}
//
//fewestCoins(in: &coins, toFind: &total)
//fewestCoins(in: &coinsFail, toFind: &total)


//: [Next](@next)
