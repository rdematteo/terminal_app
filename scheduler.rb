print ("Select an option from 1-3 (3 to quit)")
option = gets().strip
case option
require 'terminal-table'
when "1"                 # Table Options
    puts ("You chose to input information")    # show table 1
    puts table 1
    puts ("Now please choose your session No")  #  show table 2
    puts table 2
    Session = gets().strip
    puts ("Please enter your speaker No") # table 3
    puts table 3
    Speak_No = gets().strip
    puts ("Now please enter your name")
    Name = gets().strip
    puts ("Now please enter your title")
    Title = gets().strip
when "2"
    puts ("Now you chose otpion 1")
    puts ("Now you chose to ouput information")
    puts ("Please Choose from the following options (1 or 2)")  #
when "3"
  puts ("You chose otpion 3")
  puts ("Now you chose to ")
when "3"
  puts ("You chose otpion 3")
else
  puts("Error. Invalid option.")
end

option