# terminal_app
Terminal App - Robert De Matteo and Brandon Cooper

Title of terminal app: "Program Schedular"

Plan is approved by Simon

A link to your GitHub repository: https://github.com/rdematteo/terminal_app

Ensure the repository (repo) is accessible by your Educators

Description of the app, including,
Purpose, Functionality, Instructions for use, Screenshots
This Program schedular app "scheduler.rb' will allow the user to set name and title for multiple speakers in multiple sessions. The app only includes 2 sessions, each with four(4) time slots.

Instructions
Choose your option from the startup.
If you choose 1, then you can choose to edit session 1 or session 2. Each selection (session 1 or 2) will then allow you to add the name and title for a speaker. You can repeat process to over-write data.
If you choose 2, then you can display the entire program with all entered speakers.

Details of design & planning process including,
Evidence of app idea brainstorming sessions, app User/Workflow diagram
App idea brainstorming and user/workflow was evidenced in Trello (screenshots included)

Brandon to work on 1. Table options and 2. hash structure
Rob to work on 1. Welcome message and 2. Output table  3. file saving

Project plan & timeline;
Day 1 - Have majority of code completed.
Day 2 - Complete code and testing. Prepare Powerpoint presentation. Pull all evidence into readme.

Screenshots of Trello board(s)

Design issues.
Rob
1. Welcome message
No issues

2. Output table - using terminal-table 1.8.0 gem https://rubygems.org/gems/terminal-table
Could not use the code that uses separaters because could not insert title or headers.

Solution:

Used this code instead: table = Terminal::Table.new :title => "Cheatsheet", :headings => ['Word', 'Number'], :rows => rows

![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)

3. File system

need the  the JSON gem

decided on saving hashes into a txt file as JSOAN can save and read hashes

Issues.

1.JSON can only read all hasehes when hashes are appended. JSON cannot read hashes if the txt file contains \n.

Solution:

saved each hash into a new file. Retrieve each file and name each with session name

Brandon part

1.







