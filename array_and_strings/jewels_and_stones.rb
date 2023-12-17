=begin
You're given strings jewels representing the types of stones that are jewels, and stones representing the stones you have. Each character in stones is a type of stone you have. You want to know how many of the stones you have are also jewels.
Letters are case sensitive, so "a" is considered a different type of stone from "A".

Example 1:
Input: jewels = "aA", stones = "aAAbbbb"
Output: 3

Example 2:
Input: jewels = "z", stones = "ZZ"
Output: 0
=end

def num_jewels_in_stones(jewels, stones)
  count = 0
  stones_in_jewel = jewels.split("").uniq

  stones_in_jewel.each do |stone|
    count += stones.count(stone)
  end

  return count
end

def num_jewels_in_stones2(jewels, stones)
  stones_in_jewel = jewels.split("").uniq
  count = 0
  length = stones.length

  stones_in_jewel.each do |stone|
    remaining_stones = stones.delete(stone)
    remaining_length = length - remaining_stones.length
    count += remaining_length
  end

  return count
end


jewels = "aA"
stones = "aAAbbbb"

puts num_jewels_in_stones(jewels, stones)
puts num_jewels_in_stones2(jewels, stones)