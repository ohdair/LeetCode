class Solution {
    func reverseOnlyLetters(_ s: String) -> String {
        var arr = Array(s)
        var letter = arr.filter { $0.isLetter }
        var ret: [Character] = []
        
        for c in arr {
            ret.append(c.isLetter ? letter.removeLast() : c)
        }
        
        return String(ret)
    }
}