class StringValidator
  def validate(string)
    return false if string.length.odd?
    find_pairs(string.chars)
  end

  private

  def find_pairs(chars)
    result = false
    until result do
      none_found = true
      chars.each_with_index do |char, index|
        if match_found?(chars[index..(index+1)])
          chars.delete_at(index + 1)
          chars.delete_at(index)
          none_found = false
        end
      end
      result = true if chars.empty?
      break if none_found
    end
    result
  end

  def match_found?(iteration)
    iteration.join == "()" || iteration.join == "[]" || iteration.join == "{}"
  end
end


v = StringValidator.new
puts v.validate("()") #expect true
puts v.validate("([{}[]])") #expect true
puts v.validate("([{}[]]") #expect false
puts v.validate("[(]{})") #expect false