require 'byebug'

def two_sum(nums, target)
  byebug
  nums.each_index do |index|
    if (nums[index] + nums[index +1] == target)
      return [index, index + 1]
    end 
  end
end

nums = [3,2,4]
target = 6
puts two_sum(nums, target)

