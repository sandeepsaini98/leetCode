=begin
Balanced strings are those that have an equal quantity of 'L' and 'R' characters.
Given a balanced string s, split it into some number of substrings such that:
Each substring is balanced.
Return the maximum number of balanced strings you can obtain.

Example 1:
Input: s = "RLRRLLRLRL"
Output: 4
Explanation: s can be split into "RL", "RRLL", "RL", "RL", each substring contains same number of 'L' and 'R'.

Example 2:
Input: s = "RLRRRLLRLL"
Output: 2
Explanation: s can be split into "RL", "RRRLLRLL", each substring contains same number of 'L' and 'R'.
Note that s cannot be split into "RL", "RR", "RL", "LR", "LL", because the 2nd and 5th substrings are not balanced.

Example 3:
Input: s = "LLLLRRRR"
Output: 1
Explanation: s can be split into "LLLLRRRR".
=end

require 'byebug'

def balanced_string_split(s)
  left_count = 0
  right_count = 0
  output = 0

  s.each_char do |char|
    if char == 'L'
      left_count += 1
    elsif char == 'R'
      right_count += 1
    end
    
    if (left_count == right_count)
      output += 1
      left_count = 0
      right_count = 0
    end
  end

  return output
end

s = "RLRRRLLRLL"
puts balanced_string_split(s)