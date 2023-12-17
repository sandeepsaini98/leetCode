=begin
A pangram is a sentence where every letter of the English alphabet appears at least once.
Given a string sentence containing only lowercase English letters, return true if sentence is a pangram, or false otherwise.

Example 1:
Input: sentence = "thequickbrownfoxjumpsoverthelazydog"
Output: true
Explanation: sentence contains at least one of every letter of the English alphabet.

Example 2:
Input: sentence = "leetcode"
Output: false
=end

require 'byebug'

def check_if_pangram(sentence)
  uniq_char = sentence.split("").uniq
  hash_map = Hash.new(0)

  ("a".."z").each do |char|
    return false if (uniq_char.index(char) == nil)
  end

  return true
end

def check_if_pangram2(sentence)
  sentence.chars.uniq.size == 26
end

sentence = "leetcode"
puts check_if_pangram(sentence)
puts check_if_pangram2(sentence)
