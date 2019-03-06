




def options_1()
    puts ("Now it's time to input your Speech Detail")
    puts ("Please enter your session number")
    puts ("1---------goes--to------------Session 1")
    puts ("2---------------------Session 2")
    session_no = gets().strip.to_i
    puts ("Please enter your speaker number")
    puts ("1---------------------Speaker 1")
    puts ("2---------------------Speaker 2")
    puts ("3---------------------Speaker 3")
    puts ("4---------------------Speaker 4")
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




    puts ("==========================App Start Now===================================")
    puts ("Select an option from 1-3 ")
    puts ("1 -----------------------Session Input")
    puts ("2------------------------Program Output")
    puts ("3------------------------Quit")
    option = gets().strip

# puts table 1
case option
# require 'terminal-table'
when "1"                 # Table Options
    session_detail = options_1()
when "2"
    puts ("Now you chose otpion 2")
    puts ("Now you chose to ouput information")
    puts ("Please Choose from the following options (1 or 2)")
    output = gets().strip
    if output == "table"
    puts "output table"
    elsif output == "name and title"
    puts "name and title table"
    end
when "3"
    puts ("You chose otpion 3")
    puts ("Now you chose to quit")
    puts("=====================Exited==========================")
else
    puts("Error. Invalid option.")
end







# new_person = {}
# new_person[:name] = name
# new_person[:title] = title


mother_array = []
loop do

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
        mother_array <<session_1

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
    puts "1----------New Session"
    puts "2----------Quit"
    input = gets().strip.to_i
    if input == 1
        session_detail = options_1
    else

        break

    end
end
p mother_array
session_1 = mother_array[0]
session_2 = mother_array[1]
puts session_1
puts session_2
# puts "exited"
#     puts session_1
#     puts session_2
# session = {}
# session[:"session 1"] = session_1
# session[:"session 2"] = session_2
# puts session
# puts "THANK YOU FOR WATCHING"
