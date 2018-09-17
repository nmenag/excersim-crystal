# Please implement your solution to hamming in this file
class Hamming
  def self.compute(string1, string2)
    return 0 if string1 == string2
    raise ArgumentError.new if string1.size != string2.size

    difference = 0
    array_string_1 = string1.split("")
    array_string_1 = array_string_1.map_with_index {|v, i| {i, v} }
    array_string_2 = string2.split("")

    array_string_1.each do |i, v|
      difference += 1 unless array_string_2[i] == v.to_s
    end

    difference
  end
end