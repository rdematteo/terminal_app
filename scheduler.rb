require 'json'
require 'terminal-table'

#Table output
def output_table
  rows = []
  rows << ['One', '10:00', 'A', 'A']
  rows << ['Two', '10:30', 'B','A']
  rows << ['Three', '11:00', 'C','A']
  rows << ['Four', '11:30', 'D','A']
  table1 = Terminal::Table.new :title => "Session 1", :headings => ['Speaker', 'Time', 'Name', 'Title'], :rows => rows
  puts ""
  puts table1
  puts ""
  rows = []
  rows << ['One', '1:00', 'A', 'A']
  rows << ['Two', '1:30', 'B','A']
  rows << ['Three', '2:00', 'C','A']
  rows << ['Four', '2:30', 'D','A']
  table2 = Terminal::Table.new :title => "Session 2", :headings => ['Speaker', 'Time', 'Name', 'Title'], :rows => rows
  puts ""
  puts table2
  puts ""
end

def options_1
  puts ("Now it's time to input your Speech Detail")
  puts ("Please enter your session number")
  puts ("1 ===================================>> Session 1")
  puts ("2 ===================================>> Session 2")
  session_no = gets().strip.to_i
  puts ("Please enter your speaker number")
  puts ("1 ===================================>> Speaker 1")
  puts ("2 ===================================>> Speaker 2")
  puts ("3 ===================================>> Speaker 3")
  puts ("4 ===================================>> Speaker 4")
  speaker_no = gets().strip.to_i
  puts ("Now please enter your name")
  name = gets().strip
  puts ("Now please enter your title")
  title = gets().strip
  return {
      :session_no => session_no,
      :name => name,
      :title => title,
      :speaker_no => speaker_no
  }
end

def session_settings(session_detail)
  mother_array = []
  loop do
    puts "hello"
    session_no = session_detail[:session_no]
    speaker_no = session_detail[:speaker_no]
    name = session_detail[:name]
    title = session_detail[:title]
    session_1 = {}
    session_2 = {}
    session_1[:speaker_1] = {}
    session_1[:speaker_2] = {}
    session_1[:speaker_3] = {}
    session_1[:speaker_4] = {}
    session_2[:speaker_1] = {}
    session_2[:speaker_2] = {}
    session_2[:speaker_3] = {}
    session_2[:speaker_4] = {}
    if  session_no == 1
        case speaker_no
        when 1
            session_1[:speaker_1][:name] = name
            session_1[:speaker_1][:title] = title
        when 2
            session_1[:speaker_2][:name] = name
            session_1[:speaker_2][:title] = title
        when 3
            session_1[:speaker_3][:name] = name
            session_1[:speaker_3][:title] = title
        when 4
            session_1[:"speaker_4"][:name] = name
            session_1[:"speaker_4"][:title] = title
        else
            puts ("Wrong Number")
        end
            puts "the new session_1 = #{session_1}"
            mother_array << session_1
        end
    if  session_no == 2
        case speaker_no
        when 1
            session_2[:"speaker_1"][:name] = name
            session_2[:"speaker_1"][:title] = title
        when 2
            session_2[:"speaker_2"][:name] = name
            session_2[:"speaker_2"][:title] = title
        when 3
            session_2[:"speaker_3"][:name] = name
            session_2[:"speaker_3"][:title] = title
        when 4
            session_2[:"speaker_4"][:name] = name
            session_2[:"speaker_4"][:title] = title
        else
            puts ("Wrong Number")
        end
        puts "the new session_2 = #{session_2}"
        mother_array <<session_2
  end

    puts"what you want to do next?"
    puts ("1 ===================================>> New Session")
    puts ("2 ===================================>> Quit")
    input = gets().strip.to_i
    if input == 1
        session_detail = options_1
    else
        return mother_array
    end
end
end

# Welcome message
system "clear"
puts "Welcome to the Program Schedular.\nThis app will allow the user to set name and title for multpile speakers in multiple sessions.\nThere are 2 sessions, each with four(4) time slots.\n\n"
puts
loop do
  puts ("<============================= App Start =============================>")
  puts ("Select an option from 1-3 ")
  puts ("1 -----------------------Session Input")
  puts ("2------------------------Program Output")
  puts ("3------------------------Quit")
  option = gets().strip
  case option
  when "1"                 # Table Options
    session_detail = options_1
    mother_array = session_settings(session_detail)
    p mother_array
  when "2"
    output_table
  when "3"
    puts ("You chose otpion 3 now")
    puts ("Now you chose to quit")
    puts("<=========================== Exited =============================>")
    exit
  else
    puts("Error , Invalid Option.")
  end
end

puts 'hello'

p mother_array
session_1 = mother_array[0]
session_2 = mother_array[1]
puts session_1
puts session_2

# # def file_save
# # # writing hash to individual filess. This will create two separate files. One for eah hash. Each hash has information for each session
# File.open("session1file.txt", "w+") do |file|
#   file.write session1.to_json #hash for session 1 is called session1
# end
# # File.open("session2file.txt", "w+") do |file|
# #   file.write session2.to_json #hash for session 2 is called session2
# # end

# # def file_retrieve
# # # Bring the hash back into Ruby
# session1file = JSON.parse(File.read("session1file.txt"))
# # session2file = JSON.parse(File.read("session2file.txt"))
# # example of finding values
# name = session1file["speaker_one"]["name"]
# p name

# # end
