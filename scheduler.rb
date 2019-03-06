require 'json'
require 'terminal-table'

# Welcome message
system "clear"
puts "Welcome to the Program Schedular.\nThis app will allow the user to set name and title for multpile speakers in multiple sessions.\nThere are 2 sessions, each with four(4) time slots.\n\n"
puts

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




#Table output
# requires 'terminal-table' gem
# i need to add hash location for names and titles. Waiting for Brandon to create hash
def output_table
rows = []
rows << ['One', '10:00', 'A', 'A']
rows << ['Two', '10:30', 'B','A']
rows << ['Three', '11:00', 'C','A']
rows << ['Four', '11:30', 'D','A']
table1 = Terminal::Table.new :title => "Session 1", :headings => ['Speaker', 'Time', 'Name', 'Title'], :rows => rows
puts
rows = []
rows << ['One', '1:00', 'A', 'A']
rows << ['Two', '1:30', 'B','A']
rows << ['Three', '2:00', 'C','A']
rows << ['Four', '2:30', 'D','A']
table2 = Terminal::Table.new :title => "Session 2", :headings => ['Speaker', 'Time', 'Name', 'Title'], :rows => rows

puts table1
puts
puts table2

end

output_table
session1 = {:speaker_one => {:name => 'dave', :title => 'title'}, :speaker_two => {:name => 'name', :title => 'title'}, :speaker_three => {:name => 'name', :title => 'title'}, :speaker_four => {:name => 'name', :title => 'title'}}

# def file_save
# # writing hash to individual filess. This will create two separate files. One for eah hash. Each hash has information for each session
File.open("session1file.txt", "w+") do |file|
  file.write session1.to_json #hash for session 1 is called session1
end
# File.open("session2file.txt", "w+") do |file|
#   file.write session2.to_json #hash for session 2 is called session2
# end

# def file_retrieve
# # Bring the hash back into Ruby
session1file = JSON.parse(File.read("session1file.txt"))
# session2file = JSON.parse(File.read("session2file.txt"))
# example of finding values
name = session1file["speaker_one"]["name"]
p name

# end


