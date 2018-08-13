//: [Previous](@previous)
import Foundation
/*:
 # Hash Table / Hash Map / Dictionary
 [[C4Q]](https://github.com/C4Q/AC-iOS/tree/master/lessons/dsa/HashTables)
 
A hash table is a data structure used to implement a collection of key-value pairs. Each key appears only once in the collection and can be used as an index much in the way an integer is used to index an array.
 
 A Hash Table can also be referred to as:
 
 * a map
 * a dictionary
 * an associative array
 
 A **map** in the sense that it allows us to map a single value to any given key. **Dictionaries** imply unique terms/works that seek into longer descriptions. And **associative array** makes us think of an array as the means by which we can associate two pieces of data.
 
 A **Hash table** gets its name from the process by which keys are generated, and where they're stored. **Hashing** is the process by which a key is converted to an integer. **Hash** is used both as a verb and a noun. I hash a key to make a hash of it. Table is just another word for Array.
 
 You **can't** iterate over the table in a meaningful order. This is **different** from arrays that have deterministic ordering. I.e. the order you put things in is the order they come out.
 */
//: ## Hashmap Implementation
//:  [[C4Q]](https://github.com/C4Q/AC-iOS/tree/master/lessons/dsa/HashTables)
struct Hashmap<Key: Hashable, Value> {
    // this is the intializing of the size of a dictionary
    init(buckets: Int) {
        self.numberOfBuckets = buckets
        self.arr = Array(repeatElement([], count: buckets))
    }
    var keys: [Key] {
        return self.toArr().map{$0.0}
    }
    var values: [Value] {
        return self.toArr().map{$0.1}
    }
    
    private var numberOfBuckets: Int
    private var arr: [[(Key, Value)]]
    
    // look up a key in the hash table
    subscript(_ lookupKey: Key) -> Value? {
        get {
            let hashValue = lookupKey.hashValue
            let bucket = hashValue % numberOfBuckets
            let innerArr = self.arr[bucket]
            for (k,v) in innerArr {
                if k.hashValue == hashValue {
                    return v
                }
            }
            return nil
        }
        set(newValue) {
            let hashValue = lookupKey.hashValue
            let bucket = hashValue % numberOfBuckets
            let innerArr = self.arr[bucket]
            for (index, (k, _)) in innerArr.enumerated() {
                print("at index: \(index)")
                if k.hashValue == hashValue {
                    if let newValue = newValue {
                        self.arr[bucket][index] = (k, newValue)
                    } else {
                        self.arr[bucket].remove(at: index)
                    }
                }
            }
            if let newValue = newValue {
                self.arr[bucket].append((lookupKey, newValue))
            }
        }
    }
    // the following returns an array of tuples
    func toArr() -> [(Key, Value)] {
        var arr = [(Key, Value)]()
        for innerArr in self.arr {
            for element in innerArr {
                arr.append(element)
            }
        }
        return arr
    }
}



//: > Given two strings, check if they’re anagrams or not. Two strings are anagrams if they are written using the same exact letters, ignoring space, punctuation and capitalization. Each letter should have the same count in both strings. For example, ‘eleven plus two’ and ‘twelve plus one’ are meaningful anagrams of each other.

//: > Find the first non-repeated character in a string.
//: [Next](@next)

