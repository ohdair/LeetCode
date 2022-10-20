class Solution {
    func shortestCompletingWord(_ licensePlate: String, _ words: [String]) -> String {
        var array = Array(repeating: Array(repeating: 0, count: 2), count: words.count)
        
        // licensePlate Data -> Array
        var wordData = Array(repeating: 0, count: 26)
        for c in licensePlate {
            if c.isLetter {
                let idx = Int(c.lowercased().utf8.first!) - Int("a".utf8.first!)
                wordData[idx] += 1
            }
        }
        let data = wordData
        
        // array[0] = count same Character, array[1] = first same Index
        for (index, word) in words.enumerated() {
            for c in word.lowercased().utf8 {
                let i = Int(c) - Int("a".utf8.first!)
                if wordData[i] > 0 {
                    wordData[i] -= 1
                    array[index][0] += 1
                }
                array[index][1] += 1
            }
            wordData = data
        }
        
        // map
        let originArray = array
        array.sort { ($0[0], $1[1]) > ($1[0], $0[1]) }
        let solved = words[originArray.firstIndex(of: array.first!)!]
        print(array)
        return solved
    }
}