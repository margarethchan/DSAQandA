
import Foundation
// From Vic Zhong
// Given a string, if possible, output all the anagrams that are ALSO palindromes.

func palindromeableAnagram(_ str: String) -> [String] {
    guard str.count > 2 else { return [str] }
    
    var dict = [Character : Int]()
    var separator: Character? = nil
    var array = [Character]()
    var halfStrings = [String]()
    
    for char in str.lowercased().filter({ CharacterSet.alphanumerics.contains(Unicode.Scalar(String($0))!) }) {
        dict[char] = (dict[char] ?? 0) + 1
    }
    
    for (key, val) in dict {
        if val % 2 == 1 {
            guard separator == nil else { return [] }
            separator = key
        }
        
        array += Array(repeating: key, count: val / 2)
    }
    
    permutate(array.count, &array, &halfStrings)
    halfStrings = Array(Set(halfStrings))
    
    return mirror(&halfStrings, separator)
}

func permutate(_ count: Int, _ arr: inout [Character], _ storage: inout [String]) {
    if count == 1 {
        storage.append(String(arr))
        return
    }
    
    for x in 0..<count - 1 {
        permutate(count - 1, &arr, &storage)
        
        if count % 2 == 1 {
            arr.swapAt(count - 1, 0)
        } else {
            arr.swapAt(count - 1, x)
        }
    }
    
    permutate(count - 1, &arr, &storage)
}

func mirror(_ arr: inout [String], _ separator: Character?) -> [String] {
    var middleCharacter = ""
    
    if let char = separator {
        middleCharacter = String(char)
    }
    
    for x in 0..<arr.count {
        arr[x] = arr[x] + middleCharacter + String(arr[x].reversed())
    }
    
    return arr
}

_ = [palindromeableAnagram("aabbcc1"),
     palindromeableAnagram("aabbc"),
     palindromeableAnagram("xxyy333")
    ].map { print($0) }
//: [Next](@next)
