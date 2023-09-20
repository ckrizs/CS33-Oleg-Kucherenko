steck = []
result = []
priority = {
  "+" => 1,
  "-" => 1,
  "*" => 2,
  "/" => 2
}
puts "Введите математическое выражение:"
user_input = gets.chomp
chars = user_input.split(" ")
chars.each do |current_char|
  if current_char.match?(/\d/)
    result << current_char.to_i
  elsif current_char.match?(/[\+\-\*\/]/)
    while !steck.empty? && steck.last.match?(/[\+\-\*\/]/) &&
          priority[steck.last] >= priority[current_char]
      result << steck.pop
    end
    steck << current_char
  elsif current_char == "("
    steck << current_char
  elsif current_char == ")"
    while !steck.empty? && steck.last != "("
      result << steck.pop
    end
    steck.pop
  end
end
while !steck.empty?
  result << steck.pop
end
puts "RPN: #{result.join(" ")}"