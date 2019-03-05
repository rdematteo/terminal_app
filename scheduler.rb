
puts ("Select an option from 1-3 (3 to quit)")
option = gets().strip
# puts table 1
def Option()


Speach_Detail = {}

Session_1 = {}
Session 2 = {}

Session_1[:"Speaker 1"] = ""
Session_1[:"Speaker 2"] = ""
Session_1[:"Speaker 3"] = ""
Session_1[:"Speaker 4"] = ""
Session_2[:"Speaker 1"] = ""
Session_2[:"Speaker 2"] = ""
Session_2[:"Speaker 3"] = ""
Session_2[:"Speaker 4"] = ""


case option
# require 'terminal-table'
when "1"                 # Table Options
    puts ("Now it's time to input your Speech Detail")
    puts ("Now please choose your session No")  #  show table 2
    # puts table 2
    Session_No = gets().strip
    # Speach_Detail[:Session] = Session_No

    puts ("Please enter your speaker No") # table 3
    # puts table 3
    Speaker_No = gets().strip
    Speach_Detail[:Speaker] = Speaker_No
    puts ("Now please enter your name")
    Name = gets().strip
    # new_person[:name] = Name
    puts ("Now please enter your title")
    Title = gets().strip
    Speach_Detail[:Title] = Title
    # new_title[:title] = Title

when "2"
    puts ("Now you chose otpion 2")
    puts ("Now you chose to ouput information")
    puts ("Please Choose from the following options (1 or 2)")
    output = gets().strip
    if output == "table"
        # puts output table
    if output == "name and title"
        # puts name and title table

when "3"
  puts ("You chose otpion 3")
  puts ("Now you chose to quit")
  puts"(quited)


else
  puts("Error. Invalid option.")
end




def add_detail_to_backlog
    new_person[:name] = Name
    new_person[:title] = Title
    while
        case Speaker_No
        when 1
            Speaker 1 << new_person
        when 2
            Speaker 2 << new_person
        when 3
            Speaker 3 << new_person
        when 4
            Speaker 3 << new_person
        else
            puts ("Wrong Number")
        end
    end
end





while run_program == "yes"

    new_person = {}


    add_detail_to_backlog(new_session,new_speaker, new_name, new_title)

    puts "Would you like to make another order - yes or no?"
    run_program = gets.strip().downcase
end

