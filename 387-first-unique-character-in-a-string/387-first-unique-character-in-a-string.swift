class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var alphaData: [Int] = Array(repeating: 1000000, count: 26)
        
        for (index, char) in s.enumerated() {
            if alphaData[alphToInt(char: char)] == 1000000 {
                alphaData[alphToInt(char: char)] = index
            } else {
                alphaData[alphToInt(char: char)] = 1000001
            }
        }

        return alphaData.min()! == 1000000 || alphaData.min()! == 1000001 ? -1 : alphaData.min()!
    }
    func alphToInt(char: Character) -> Int {
        if let input = UnicodeScalar(String(char))?.value {
            return Int(input - 97)
        }
        return -1
    }
}