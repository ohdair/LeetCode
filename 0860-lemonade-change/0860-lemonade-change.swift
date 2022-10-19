class Solution {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var fiveMoney = 0, tenMoney = 0
        for bill in bills {
            switch bill {
                case 5:
                    fiveMoney += 1
                case 10:
                    if fiveMoney == 0 { return false }
                    tenMoney += 1
                    fiveMoney -= 1
                case 20:
                    if fiveMoney < 1 || tenMoney < 1, fiveMoney < 3 { return false }
                    if tenMoney >= 1 { tenMoney -= 1; fiveMoney -= 1 } else { fiveMoney -= 3 }
                default: break
            }
        }
        return true
    }
}