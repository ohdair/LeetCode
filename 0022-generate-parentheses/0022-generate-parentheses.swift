class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var setData: [[Character]] = [["(",")"]]
        var tmp: [[Character]] = []
        
        func dfs(_ current: Int) {
            guard current < n else { return }
            
            for i in 1...current + 1 {
                for j in 0..<setData.count {
                    var prevData = setData[j]
                    prevData.insert(contentsOf: ["(",")"], at: i)
                    if tmp.contains(prevData) {
                        continue 
                    } else {
                        tmp.append(prevData)
                    }
                
                }
            }
            setData = tmp
            tmp = []
            dfs(current + 1)
        }
        dfs(1)
        let result = setData.map { String($0)}
        return result
    }
}