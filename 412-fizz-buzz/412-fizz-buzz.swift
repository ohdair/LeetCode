class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var count: Int = 0
        var ret: [String] = []
        
        while count < n {
            count += 1
            if count % 3 == 0, count % 5 == 0 {
                ret.append("FizzBuzz")
            } else if count % 3 == 0 {
                ret.append("Fizz")
            } else if count % 5 == 0 {
                ret.append("Buzz")
            } else {
                ret.append(String(count))
            }
        }
        
        return ret
    }
}