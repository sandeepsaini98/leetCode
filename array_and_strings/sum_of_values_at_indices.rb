=begin
You are given a 0-indexed integer array nums and an integer k.
Return an integer that denotes the sum of elements in nums whose corresponding indices have exactly k set bits in their binary representation.
The set bits in an integer are the 1's present when it is written in binary.
For example, the binary representation of 21 is 10101, which has 3 set bits.
 
Example 1:
Input: nums = [5,10,1,5,2], k = 1
Output: 13
Explanation: The binary representation of the indices are: 
0 = 000
1 = 001
2 = 010
3 = 011
4 = 100
Indices 1, 2, and 4 have k = 1 set bits in their binary representation.
Hence, the answer is nums[1] + nums[2] + nums[4] = 13.

Example 2:
Input: nums = [4,3,2,1], k = 2
Output: 1
Explanation: The binary representation of the indices are:
0 = 00
1 = 01
2 = 10
3 = 11
Only index 3 has k = 2 set bits in its binary representation.
Hence, the answer is nums[3] = 1.
=end
require 'byebug'

def sum_indices_with_k_set_bits(nums, k)
    # Find the number of ones bits in the binary 
    # representation of the indicies of nums
    num_set_bits = (0...nums.length).map { |n|
        n.to_s(2).count("1")
    }
    
    # return sum of each element of nums whose index 
    # has k ones bits in its binary representation
    nums.filter_map.with_index { |num, i|
        num_set_bits[i] == k ? num : 0
    }.sum
end

nums = [1,1]
k = 0

puts sum_indices_with_k_set_bits(nums, k)  