//: [Previous](@previous)
import Foundation
/*:
 # Hash Table / Hash Map / Dictionary
 [[Ray Wenderlich]](https://www.raywenderlich.com/206-swift-algorithm-club-hash-tables)
*/
// 1. Through the constraining the Key as Hashable, your dictionary enforces that all keys have a hash value, so your dictionary doesn't need to worry about calculating the actual hash.
// 2. The main array is named buckets.
// 3. It has a fixed size provided by the init(capacity) method.
// 4. You also keep track of how many items have been added to the hash table using the count variable.
public struct HashTable<Key: Hashable, Value> { // 1
    private typealias Element = (key: Key, value: Value)
    private typealias Bucket = [Element]
    private var buckets: [Bucket] // 2
    private(set) public var count = 0 // 4
    
    public var isEmpty: Bool {
        return count == 0
    }
    
    public init(capacity: Int) {
        assert(capacity > 0)
        buckets = Array<Bucket>(repeating: [], count: capacity) // 3
    }
    
    // helper method to ensure the key maps to an index within the bounds of the storage array
    private func index(for key: Key) -> Int {
        return abs(key.hashValue) % buckets.count
    }
    
    /// insert a new elements
    // The subscript method takes a key and returns a value. The actual logic will reside in the value(for:) method.
    public subscript(key: Key) -> Value? {
        get {
            return value(for: key)
        }
        set { // This adds a setter to the subscript operation. newValue is a invisible reference to the value that is being assigned to the subscript. Once again, you'll be defining actual logic in a helper method.
            if let value = newValue {
                update(value: value, for: key)
            } else {
                removeValue(for: key)
            }
        }
    }

    /// look up an element
    // value(for:) first calls index(for:) to convert the key into an array index.
    // That returns the bucket number, but this bucket may be used by more than one key if there were collisions.
    // Thus, you use the first method that takes a closure, where you compare the key of each element with the key you want to match it with.
    // If a match is found, you use optional chaining to extract the value.
    // Otherwise, first will return nil, signifying that the key doesn't map to a value in the hash table.
    public func value(for key: Key) -> Value? {
        let index = self.index(for: key)
        return buckets[index].first { $0.key == key }?.value
    }

    /// update an existing element
    @discardableResult
    public mutating func update(value: Value, for key: Key) -> Value? {
        let index = self.index(for: key)
        
        // You first check to see if the value is already inside a bucket. If it is, you update the value at the index i.
        if let (i, element) = buckets[index].enumerated().first(where: { $0.1.key == key }) {
            let oldValue = element.value
            buckets[index][i].value = value
            return oldValue
        }
        // If execution comes to this point, it means the key doesn't map to a particular value inside the hash table. You then add the new key-value pair at the end of the bucket.
        buckets[index].append((key: key, value: value))
        count += 1
        return nil
    }


    /// remove an element
    @discardableResult
    public mutating func removeValue(for key: Key) -> Value? {
        let index = self.index(for: key)
        
        // You first check to see if the value is in the bucket.
        // If it is, you remove the key in the chain, decrement the count, and return the value.
        if let (i, element) = buckets[index].enumerated().first(where: { $0.1.key == key }) {
            buckets[index].remove(at: i)
            count -= 1
            return element.value
        }
        // Otherwise, you return nil, since you couldn't find the key-value pair to remove.
        return nil
    }
}

var hashTable = HashTable<String, String>(capacity: 5)
hashTable["firstName"] = "Steve"

if let firstName = hashTable["firstName"] {
    print(firstName)
} else {
    print("firstName key is not in the hash table")
}

if let lastName = hashTable["lastName"] {
    print(lastName)
} else {
    print("lastName key not in hash table")
}

hashTable["firstName"] = nil

if let firstName = hashTable["firstName"] {
    print(firstName)
} else {
    print("firstName key is not in the hash table")
}

//: [Next](@next)
