require "hkn_palindrome/version"

class String

  #returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  #returns content for palindrome testing
  def processed_content
    self.scan(/[a-z]/i).join.downcase
  end
end
