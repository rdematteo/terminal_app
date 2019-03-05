

session_1 = {}
session_2 = {}

session_1[:"speaker 1"] = {}
session_1[:"speaker 2"] = {}
session_1[:"speaker 3"] = {}
session_1[:"speaker 4"] = {}
session_2[:"speaker 1"] = {}
session_2[:"speaker 2"] = {}
session_2[:"speaker 3"] = {}
session_2[:"speaker 4"] = {}


def Option()
    puts ("Select an option from 1-3 (3 to quit)")
    option = gets().strip
# puts table 1
    case option
# require 'terminal-table'
    when "1"                 # Table Options
        puts ("Now it's time to input your Speech Detail")
        puts ("Please enter your session number")
        session_no = gets().strip


        puts ("Please enter your speaker number")
        speaker_No = gets().strip

        #  show table 2
        # puts table 2
        puts ("Now please enter your name")
        name = gets().strip
        puts name
        puts ("Now please enter your title")
        title = gets().strip
        puts title
        new_person = {}
        new_person[:name] = name
        new_person[:title] = title
        add_detail_to_backlog()
        # table 3




    # # new_title[:title] = title
        #puts ("Now please choose your session No")
    # session_No = gets().strip

    #
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
end




def add_detail_to_backlog()



    while

        if  session_no == 1
            case speaker_No
            when 1
                session_1[:"speaker 1"] << new_person
            when 2
                session_1[:"speaker 2"] << new_person
            when 3
                session_1[:"speaker 3"] << new_person
            when 4
                session_1[:"speaker 4"] << new_person
            else
                puts ("Wrong Number")
            end
        end

        if  session_no == 2
            case speaker_No
            when 1
                session_1[:"speaker 1"] << new_person
            when 2
                session_1[:"speaker 2"] << new_person
            when 3
                session_1[:"speaker 3"] << new_person
            when 4
                session_1[:"speaker 4"] << new_person
            else
                puts ("Wrong Number")
            end
        end
    end
end


Option()

puts session_1
puts session_2


# while run_program == "yes"

#     new_person = {}


#     add_detail_to_backlog(new_session,new_speaker, new_name, new_title)

#     puts "Would you like to make another order - yes or no?"
#     run_program = gets.strip().downcase
# end

