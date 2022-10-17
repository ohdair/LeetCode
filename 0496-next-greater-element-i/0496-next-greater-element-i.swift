class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var hm = [Int: Int]()
        var st = [Int]()
        for i in 0..<nums2.count {
            while st.count > 0 && st.last! < nums2[i] {
                hm[st.removeLast()] = nums2[i]
            }
            st.append(nums2[i])
        }
        var ans = [Int]()
        for i in 0..<nums1.count {
            ans.append(hm[nums1[i]] ?? -1)
        }
        return ans
    }
}