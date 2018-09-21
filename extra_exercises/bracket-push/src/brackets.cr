class Brackets
  BRACKETS = {
    "(" => ")",
    "[" => "]",
    "{" => "}"
  }

  def self.are_valid?(string)
    stack = Array(String).new
    split = string.split("")

    split.each do |char|
      if BRACKETS.keys.includes?(char)
        stack << char
      elsif BRACKETS.values.includes?(char)
        return false if stack.empty?
        return false unless BRACKETS[stack.pop] == char
      end
    end

    stack.empty?
  end
end