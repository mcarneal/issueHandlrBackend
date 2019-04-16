# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#
#
# dolma = Employee.create(name: 'dolma', employeeNo: 2001, role: "junior developer")
# michael = Employee.create(name: 'michael', employeeNo: 2002, role: "junior developer")
# elizabeth = Employee.create(name: 'elizabeth', employeeNo: 2003, role: "junior developer")
# brianna = Employee.create(name: 'brianna', employeeNo: 2004, role: "junior developer")
# dana = Employee.create(name: 'dana', employeeNo: 2005, role: "junior developer")
# matt = Employee.create(name: 'matt', employeeNo: 2006, role: "junior developer")
#
issue = Issue.create(title: 'server stuff', category: 'Network', description: 'this is a generic description while we seed our database.')
issue = Issue.create(title: 'screen of laptop is broken', category: 'Hardware' , description: 'this is a generic description while we seed our database.')
issue = Issue.create(title: 'debug the project', category: 'Software', description: 'this is a generic description while we seed our database.')
issue = Issue.create(title: 'home page keeps crashing', category: 'Software', description: 'this is a generic description while we seed our database.')
# issue = Issue.create(title: '404 error on product show page', category: 'Software', description: 'this is a generic description while we seed our database.')
# issue = Issue.create(title: 'infinite loop on my profile', category: 'category', description: 'this is a generic description while we seed our database.')

#
assignment = Assignment.create(title: 'server issues', employee_id: 1, issue_id: 5, description: 'When accessing the admin network packets are being dropped.')
assignment = Assignment.create(title: 'Check Display Cables', employee_id: 1, issue_id: 6, description: 'this is a generic description while we seed our database.')
assignment = Assignment.create(title: 'check homepage backend route', employee_id: 2, issue_id: 7, description: 'this is a generic description while we seed our database.')
assignment = Assignment.create(title: 'server issues', employee_id: 2, issue_id: 8, description: 'After checking network config, all settings are correct. Check cableing leading from patch panel')
assignment = Assignment.create(title: 'server issues', employee_id: 2, issue_id: 9, description: 'Possible russian interference? Consult Congress')
# assignment = Assignment.create(title: 'server issues', employee_id: 1, issue_id: 3, description: 'this is a generic description while we seed our database.')
# assignment = Assignment.create(title: 'server issues', employee_id: 1, issue_id: 1, description: 'this is a generic description while we seed our database.')
# assignment = Assignment.create(title: 'server issues', employee_id: 1, issue_id: 1, description: 'this is a generic description while we seed our database.')
# assignment = Assignment.create(title: 'server issues', employee_id: 1, issue_id: 1, description: 'this is a generic description while we seed our database.')
