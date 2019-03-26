require "hkn_palindrome/version"

module HknPalindrome

  #returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
    processed_content == processed_content.reverse
    end
  end

  private

  #returns content for palindrome testing
  def processed_content
    self.to_s.scan(/[a-z]*[\d]*/i).join.downcase
  end
end

class String
  include HknPalindrome
end

class Integer
  include HknPalindrome
end
