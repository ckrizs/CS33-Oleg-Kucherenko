def valid_ipv4?(ip)
  parts = ip.split(".")
  return false unless parts.length == 4
  parts.all? do |part|
    return false if part.empty?
    return false if part.to_i.to_s != part
    num = part.to_i
    return false if num < 0 || num > 255
    return false if num.to_s != part
  end
  true
end

puts "Будь ласка, введіть потенційну IPv4-адресу:"
input = gets.chomp

if valid_ipv4?(input)
  puts "Ваш ввід є дійсною IPv4-адресою."
else
  puts "Ваш ввід не є дійсною IPv4-адресою."
end

