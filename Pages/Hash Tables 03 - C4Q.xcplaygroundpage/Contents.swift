//: [Previous](@previous)
import Foundation
/*:
 # Hash Table / Hash Map / Dictionary
 [C4Q Lesson Notes]
 */
let myBool = true
myBool.hashValue
false.hashValue

"a".hashValue


struct HashMap<Key: Hashable, Value> {
    private var arr: [[(Key, Value)]]
    private var numberOfBuckets: Int
    private let maxLoadFactor = 0.8 //arbitrary
    private var count: Int = 0 {
        didSet {
            if loadFactor > maxLoadFactor {
                resizeArr()
            }
        }
    }
    
    mutating func resizeArr() {
        print("resizing", loadFactor, numberOfBuckets, count)
        var newHashMap = HashMap(bucketNum: numberOfBuckets * 2)
        for (k,v) in self.toArr() {
            newHashMap[k] = v
        }
        self = newHashMap
    }
    
    private var loadFactor: Double {
        return  Double(count) / Double(numberOfBuckets)
    }
    // this is the intializing of the size of a dictionary
    init(bucketNum: Int) {
        self.numberOfBuckets = bucketNum
        self.arr = Array(repeatElement([], count: bucketNum))
    }
    
    var keys: [Key] {
        return self.toArr().map{$0.0}
    }
    var values: [Value] {
        return self.toArr().map{$0.1}
    }
    
    func toArr() -> [(Key, Value)] {
        // making an array of tuples instance
        var arr = [(Key, Value)]()
        // the first loops the bigger array that have arrrays which have tuples inside them
        for innerArr in self.arr {
            //the second loop goes inside the inner array which have tuples inside them
            for element in innerArr {
                //now we are appending each tuple from the second loop to arr
                arr.append(element)
            }
        }
        // returning the array that we filled with tuples from the inner array of the main array [[(key, value)]]
        return arr
    }
    // what is a subscript? Subscripts are used to access information from a collection, sequence and a list in Classes, Structures and Enumerations without using a method
    // the lookUpKey is the element that you are going to put for search dictionary[lookUp]
    subscript(_ lookupKey: Key) -> Value? {
        get {
            //it is converting the lookUp key to a hash value
            let hashValue = lookupKey.hashValue
            //then you modulo this number
            let bucket = hashValue % numberOfBuckets
            
            let innerArr = self.arr[bucket]
            // each tuple has an index in the inner array
            for (index, (k,v)) in innerArr.enumerated() {
                print("Looking at index: \(index) to get \(lookupKey)")
                if k == lookupKey {
                    return v
                }
            }
            return nil
        }
        
        ///////the above part we assume that we have an instance of dictionary that have buckets
        set(newValue) {
            let hashValue = lookupKey.hashValue
            let bucket = hashValue % numberOfBuckets
            let innerArr = self.arr[bucket]
            for (index, (k,_)) in innerArr.enumerated() {
                print("Looking at index: \(index) to insert \(newValue)")
                if k == lookupKey {
                    //that's not clear
                    if let newVal = newValue {
                        self.arr[bucket][index] = (k, newVal)
                    } else {
                        // why you are removing the plate from the bucket?
                        self.arr[bucket].remove(at: index)
                        count -= 1
                    }
                    return
                }
            }
            if let newVal = newValue {
                self.arr[bucket].append((lookupKey, newVal))
                count += 1
            }
        }
    }
}
var myDict: HashMap<String, Int> = HashMap(bucketNum: 1)
myDict["a"] = 11
myDict["b"] = 22
myDict["c"] = 33
myDict["d"] = 44
myDict["e"] = 55
myDict["f"] = 66
print(myDict.toArr())


/*
 
 O(n) - linear
 O(1) - constant
 
                Search  Insert  Delete  Access
 Array           O(n)    O(n)    O(n)    O(1)
 Linked List     O(n)    O(1)    O(1)    O(n)
 Hashmap         O(1)    O(1)    O(1)
 
 */




//: [Next](@next)
