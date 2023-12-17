=begin
You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.
Return the merged string.

Example 1:
Input: word1 = "abc", word2 = "pqr"
Output: "apbqcr"
Explanation: The merged string will be merged as so:
word1:  a   b   c
word2:    p   q   r
merged: a p b q c r

Example 2:
Input: word1 = "ab", word2 = "pqrs"
Output: "apbqrs"
Explanation: Notice that as word2 is longer, "rs" is appended to the end.
word1:  a   b 
word2:    p   q   r   s
merged: a p b q   r   s

Example 3:
Input: word1 = "abcd", word2 = "pq"
Output: "apbqcd"
Explanation: Notice that as word1 is longer, "cd" is appended to the end.
word1:  a   b   c   d
word2:    p   q 
merged: a p b q c   d
=end
require 'byebug'

def merge_alternately(word1, word2)
  word = select_word(word1, word2)
  length = word.length - 1
  word3 = word[0..length]
  result = []
  i = 0

  word1.each_char do |char|
    result.push(char)
    result.push(word2[i])
    i += 1
  end
  result.push(word2[length+1..word2.length])
  return result.join
end

def select_word(word1, word2)
  if (word1.length > word2.length)
    return word1
  else
    return word2
  end
end

word1 = "ab"
word2 = "pqrs"

puts merge_alternately(word1, word2)

