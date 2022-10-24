class Solution {
    func isLongPressedName(_ name: String, _ typed: String) -> Bool {
        guard name.count <= typed.count else { return false }
        var name = Array(name)
        var typed = Array(typed)
        var i = 0
        var j = 0
        
        while i < name.count, j < typed.count {
            if name[i] == typed[j] {
                i += 1; j += 1
            } else if i > 0, name[i - 1] == typed[j] {
                j += 1
            } else {
                return false
            }
        }
        while j < typed.count {
            if i > 0, name[i - 1] == typed[j] {
                j += 1
            } else {
                return false
            }
        }
        if i != name.count {
            return false
        }
        return true
    }
}