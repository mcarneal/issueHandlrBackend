# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



#
issue = Issue.create(title: 'Russian is at it again', category: 'Network', description: 'Access to the Accounting network appears to be offline, please investigate.', status: 0)
issue = Issue.create(title: 'Macbook bite me', category: 'Hardware' , description: 'my macbook attacked me while i was working the other day.', status: 0)
issue = Issue.create(title: 'North Korea Hacked up', category: 'Software', description: 'these 404s are fgiving me anxiety', status: 0)
issue = Issue.create(title: 'I got hacked......again', category: 'Software', description: 'My dog snuggles at my iphone and now i cant send or recieve texts', status: 0)


issue1 = Issue.create(title: "All the viruses", description: "I have to many viruses on my computer and now i cant go anywhere", category: "Hardware", status: 0)

issue2 = Issue.create(title: "Camera of the phone is not working", description: "camera is blurr and sometime it doesnot work at all", category: "Hardware", status: 0)

issue3 = Issue.create(title: "Server down", description: "Volume went down in the middle of a video and can't access the volume since then", category: "whatever", status: 0,)

issue4 = Issue.create(title: "laptop shutdown", description: "Laptop not working at all", category: "whatever", status: 0)


# assignment = Assignment.create(title: 'Volume on laptop', employee_id: 1, issue_id: 13 , description: 'Check if issue persists in a known good user enviroment')
# assignment = Assignment.create(title: 'Facetime', employee_id: 1, issue_id: 10 , description: 'Check permissions setting to verfiy camera is accessible.')
# assignment = Assignment.create(title: 'Core Server down', employee_id: 2, issue_id: 14 , description: 'Main switch is down on the core server, check response.')
# assignment = Assignment.create(title: 'No power, dead unit', employee_id: 2, issue_id: 15 , description: 'Reset power supply')
# assignment = Assignment.create(title: 'All the viruses', employee_id: 2, issue_id: 16 , description: 'Check power supply then move to logic board')
# assignment = Assignment.create(title: 'Show Page not loading', employee_id: 1, issue_id: 7 , description: 'Show page loads to 20 errors. Begin debug process.')
# assignment = Assignment.create(title: 'Show Page not loading', employee_id: 2, issue_id: 7 , description: 'After Show page is debugged check backend settings for errors.')
# assignment = Assignment.create(title: 'Null employee number', employee_id: 2, issue_id: 8 , description: 'Check params of employee when new instance is being generated')
# # assignment = Assignment.create(title: 'Null employee number', employee_id: 1, issue_id: 8 , description: 'Inspect validations and research front end')
