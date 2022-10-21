class Solution {
    func numUniqueEmails(_ emails: [String]) -> Int {
        var uniqueEmails: Set<String> = []
        for email in emails {
            uniqueEmails.insert(transEmail(email))
        }
        
        return uniqueEmails.count
    }
    
    func transEmail(_ str: String) -> String {
        var email = Array(str)
        
        var idx = Int(email.firstIndex(of: "@")!)
        var domain: String = String(email[idx..<email.count])
        email.removeSubrange(idx..<email.count)
        
        if let idx = email.firstIndex(of: "+") {
            email.removeSubrange(Int(idx)..<email.count)
        }
        
        var ret = email.filter { $0 != "." }
        
        return String(ret) + domain
    }
}