if ARGV[0] == "Stone" and ARGV[1] == "Paper"
	puts "You lose"
elsif ARGV[0] == "Stone" and ARGV[1] == "Scissors"
	puts "You win"
elsif ARGV[0] == "Scissors" and ARGV[1] == "Paper"
	puts "You win"
elsif ARGV[0] == "Scissors" and ARGV[1] == "Stone"
	puts "You lose"
elsif ARGV[0] == "Paper" and ARGV[1] == "Stone"
	puts "You win"
elsif ARGV[0] == "Paper" and ARGV[1] == "Scissors"
	puts "You lose"
end