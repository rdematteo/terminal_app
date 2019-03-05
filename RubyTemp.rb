Session_1 = {}
Session_2 = {}

Session_1[:"speaker 1"] = {}
Session_1[:"speaker 2"] = {}
Session_1[:"speaker 3"] = {}
Session_1[:"speaker 4"] = {}
Session_2[:"speaker 1"] = {}
Session_2[:"speaker 2"] = {}
Session_2[:"speaker 3"] = {}
Session_2[:"speaker 4"] = {}





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
        add_detail_to_backlog()
        #  show table 2
        # puts table 2
        puts ("Now please enter your name")
        name = gets().strip
        puts ("Now please enter your title")
        title = gets().strip
        # table 3

        return speaker_No

    # # new_title[:title] = title
        #puts ("Now please choose your session No")
    # Session_No = gets().strip

    #
    when "2"
        puts ("Now you chose otpion 2")
        puts ("Now you chose to ouput information")
        puts ("Please Choose from the following options (1 or 2)")
        output = gets().strip
        if output == "table"
        puts "output table"
        elsif output == "name and title"
        # puts "name and title table"
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
    new_person[:name] = name
    new_person[:title] = title

    while
        case speaker_No
        new_person[:name] = name
        new_person[:title] = title
        if  session_no = 1
            when 1
                Session_1[:"speaker 1"] << new_person
            when 2
                Session_1[:"speaker 2"] << new_person
            when 3
                Session_1[:"speaker 3"] << new_person
            when 4
                Session_1[:"speaker 4"] << new_person
            else
                puts ("Wrong Number")
            end
        end

        if  session_no = 2
            when 1
                Session_1[:"speaker 1"] << new_person
            when 2
                Session_1[:"speaker 2"] << new_person
            when 3
                Session_1[:"speaker 3"] << new_person
            when 4
                Session_1[:"speaker 4"] << new_person
            else
                puts ("Wrong Number")
            end
        end
    end
end



Option()
