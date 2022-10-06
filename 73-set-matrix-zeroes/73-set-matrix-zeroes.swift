class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        var rowData = Array(repeating: false, count: matrix.count)
        var colData = Array(repeating: false, count: matrix[0].count)

        for row in 0..<matrix.count {
            for col in 0..<matrix[row].count {
                if !rowData[row] && matrix[row][col] == 0 {
                    rowData[row] = true
                }
                if !colData[col] && matrix[row][col] == 0 {
                    colData[col] = true
                }
            }
        }
        
        for row in 0..<matrix.count {
            for col in 0..<matrix[row].count {
                if rowData[row] || colData[col] {
                    matrix[row][col] = 0
                }
            }
        }
    }
}