class RomanConverter
  @@roman_numerals = {
    'M' => 1000,
    'CM' => 900,
    'D' => 500,
    'CD' => 400,
    'C' => 100,
    'XC' => 90,
    'L' => 50,
    'XL' => 40,
    'X' => 10,
    'IX' => 9,
    'V' => 5,
    'IV' => 4,
    'I' => 1
  }

  def self.to_roman(number)
    result = ''
    @@roman_numerals.each do |roman, value|
      while number >= value
        result += roman
        number -= value
      end
    end
    result
  end

  def self.to_integer(roman)
    result = 0
    previous_value = 0
    roman.each_char do |char|
      value = @@roman_numerals[char]
      result += value
      result -= 2 * previous_value if previous_value < value
      previous_value = value
    end
    result
  end
end

puts RomanConverter.to_roman(1990)
puts RomanConverter.to_roman(2008)
puts RomanConverter.to_roman(1666)

puts RomanConverter.to_integer('IV')
puts RomanConverter.to_integer('MCMXC')
puts RomanConverter.to_integer('MMVIII')
puts RomanConverter.to_integer('MDCLXVI')
