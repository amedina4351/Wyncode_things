



 
"██╗     ██╗██╗   ██╗███████╗     ██████╗ ██████╗     \033[31m██████╗ ██╗███████╗ \033[0m
██║     ██║██║   ██║██╔════╝    ██╔═══██╗██╔══██╗    \033[31m██╔══██╗██║██╔════╝ \033[0m
██║     ██║██║   ██║█████╗      ██║   ██║██████╔╝    \033[31m██║  ██║██║█████╗  \033[0m
██║     ██║╚██╗ ██╔╝██╔══╝      ██║   ██║██╔══██╗    \033[31m██║  ██║██║██╔══╝  \033[0m
███████╗██║ ╚████╔╝ ███████╗    ╚██████╔╝██║  ██║    \033[31m██████╔╝██║███████╗\033[0m
╚══════╝╚═╝  ╚═══╝  ╚══════╝     ╚═════╝ ╚═╝  ╚═╝     \033[31m═════╝ ╚═╝╚══════╝\033[0m".each_char{|c|print c; sleep 0.01; $stdout.flush}


puts " "   



puts " 
                 ***** Welcome to Live or DIE ***** "
puts " 
            This is a game of classic Russian Roulette..."
puts " 
             	I pick the bullet, you take the risk."

puts " "

" 		 \033[31mWARNING - press 'y' to continue: \033[0m".each_char{|c|print c; sleep 0.1; $stdout.flush}
                  
puts " "
puts " "

prompt = STDIN.gets.chomp

return unless prompt == 'y'
puts " "

input = (print 'Name: '; gets&.rstrip)

name = input
puts " "

"Let's begin #{name}. I'll pick a number for the bullet, you pick your lucky number.
Pick the right one and I'll let you live. Pick the wrong one and... BANG! Game over.".each_char{|c|print c; sleep 0.1; $stdout.flush}

puts " "
puts " "


bullets = [1, 2, 3, 4, 5, 6]
random_bullet = bullets.sample
choice = 0

while choice != random_bullet
  puts "Pick a number 1-6"
  choice = gets.chomp.to_i
  puts "Lucky Bastard, Try again."
  if choice == random_bullet
    puts "BANG!!! You are dead!"
    
  end
end