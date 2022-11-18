class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for idx in 0..<(nums.count){
        //print(idx)
        for jdx in (idx+1)..<(nums.count){
            if nums[idx] + nums[jdx] == target {
                print(nums[idx], nums[jdx])
                return [idx, jdx]
            }
        }
    }
    return []
}
}