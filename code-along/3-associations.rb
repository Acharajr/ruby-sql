# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database
# - Insert and read contact data for companies in the database
puts "There are #{Company.all.count} companies"
puts "There are #{Contact.all.count} companies"

# 1. insert new rows in the contacts table with relationship to a company
 
apple = Company.find_by({"name" => "Apple"})
p apple

contact = Contact.new
contact["first_name"] = "Tim"
contact["last_name"] = "Cook"
contact["email"] = "Tim@apple.com"
contact["company_id"] = apple["id"]
contact.save

contact = Contact.new
contact["first_name"] = "Ben"
contact["last_name"] = "Streett"
contact["email"] = "BStreett@apple.com"
contact["company_id"] = apple["id"]
contact.save

nike = Company.find_by({"name" => "Nike"})

contact = Contact.new
contact["first_name"] = "Jim"
contact["last_name"] = "Streett"
contact["email"] = "BStreett@apple.com"
contact["company_id"] = nike["id"]
contact.save


# 2. How many contacts work at Apple?
apple_contacts = Contact.where({"company_id" => apple["id"]})
p apple_contacts

puts "There are #{apple_contacts.count}"

# 3. What is the full name of each contact who works at Apple?
for employee in apple_contacts
    #p employee
    first_name = employee["first_name"]
    last_name = employee["last_name"]
    puts "#{first_name} #{last_name}"
end