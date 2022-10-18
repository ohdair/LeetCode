
class MyHashMap {
    var myHashMap: [Int] = (0...Int(1E6)).map { _ in -1 }
    init() {
    }
    
    func put(_ key: Int, _ value: Int) {
        myHashMap[key] = value
    }
    
    func get(_ key: Int) -> Int {
        return myHashMap[key]
    }
    
    func remove(_ key: Int) {
        myHashMap[key] = -1
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */