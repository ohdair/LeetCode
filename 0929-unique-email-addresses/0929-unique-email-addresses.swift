class Solution {
    func numUniqueEmails(_ emails: [String]) -> Int {
        var uniqueEmails: Set<String> = []
        
        for email in emails {
            var valid = email.split(separator: "@")
            var name = String()
            
            for ch in valid[0] where ch != "." {
                guard ch != "+" else { break }
                name.append(ch)
            }
            uniqueEmails.insert(name + "@" + valid[1])
        }
        
        return uniqueEmails.count
    }
}