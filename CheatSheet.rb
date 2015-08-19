
def main_menu
	puts "0. Quit"
	puts "1. Command Line"
	puts "2. Vim"
	puts "Please Select an Option:"

	input = gets.chomp
  if input == '0'
  	exit
  elsif input == '1'
  	command_line
  elsif input == '2'
  	vim
  else
    invalid
    main_menu
  end
end



def command_line
	puts "Command Line Cheat Sheet:"
	puts "0. Main Menu:"
	puts "1. copy - cp - <source filename> <destination filename>"
	puts "2. move - mv - mv <source filename> <destination directory>"
	puts "3. make directory - mkdir - mkdir <directory name>"
	puts "4. print working directory - pwd : outputs the name of the current working directory"
	puts "5. ls: lists all files and directories in the working directory"
	puts "6. ls -a: lists all contents, including hidden files and directories"
	puts "7. ls -l: lists all contents of a directory in long format"
	puts "8. ls -t: order files and directories by the time they were last modified"
	puts "9. ls -alt: lists all contents, including hidden files and directories, in long format, ordered by the date and time they were last modified."
	puts "10. Asterisk * : selects all files in the working directory, so use the asterisk with any command function to select all files at a specific location"
end
while true
  command_line_input = gets.chomp
  case command_line_input
  when '1'
    puts 'man cp'
  break

  when '2' 
    puts 'man mv'
  break
  when '3'
    puts 'man mkdir'
  break
  when '4'
    puts 'man pwd'
  break
  when '5'
    puts 'man ls'
  break
  when '6'
    puts 'man ls'
  break

  end
    

end

def vim
	puts "Vim Code References:"
			puts "1. h: move cursor left"
			puts "l: move cursor right"
			puts "k: move cursor up"
			puts "j: move cursor down"
			puts "i: insert mode"
			puts "esc: escape insert mode"
			puts "wq: write and quit vim"
			puts " quit vim without writing "


end

def invalid
	puts "Invalid input was received, please try again"
end

main_menu
