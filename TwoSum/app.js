/*
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution and you may not use the same element twice

You can return the answer in any order
*/

var nums = [6, 6, 8, 1, 9, 10]
var target = 12

function twoSum(nums, target) {

    for (i = 0; i < nums.length; i++) {
        var current = nums[i]
        var next = nums[i + 1]
        var sum = current + next
        if (sum == target) {
            console.log("La suma es: " + sum)
            let indexes = "["+i+","+(i+1)+"]"
            console.log(indexes)
          	return [i, i+1]
        }
    }
    
}

twoSum(nums, target)
