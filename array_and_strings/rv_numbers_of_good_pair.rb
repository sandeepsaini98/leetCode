=begin
Given an array of integers nums, return the number of good pairs.
A pair (i, j) is called good if nums[i] == nums[j] and i < j.

Example 1:
Input: nums = [1,2,3,1,1,3]
Output: 4
Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.

Example 2:
Input: nums = [1,1,1,1]
Output: 6
Explanation: Each pair in the array are good.

Example 3:
Input: nums = [1,2,3]
Output: 0
=end

require 'byebug'

def num_identical_pairs(nums)
  length = nums.length
  count = 0
  hash = Hash.new(0)

  nums.each do |num|
    count += hash[num]
    hash[num] +=1
  end
  count
end

nums = [1,2,3,1,1,3]
puts num_identical_pairs(nums)