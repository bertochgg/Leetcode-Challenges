var nums = [2, 1, 4, 1, 9, 10]
var target = 6

function twoSum(nums, target) {
    for (let i = 0; i < nums.length; i++) {
        for (let j = i + 1; j < nums.length; j++) {
            if (nums[i] + nums[j] == target) {
                return [i, j]
            }
        }
    }
}

twoSum(nums, target)
//Este es el correcto en todos los casos