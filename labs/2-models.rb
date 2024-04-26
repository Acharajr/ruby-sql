# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file


# 2. insert 1-2 rows in salespeople table.
p "Salespeople: #{Salesperson.all.count}"

salespeople = Salesperson.new

salespeople["first_name"] = "Ben"
salespeople["last_name"] = "Block"
salespeople["email"] = "BB@gmail.com"
salespeople.save
p salespeople

p "Salespeople: #{Salesperson.all.count}"

salespeople = Salesperson.new

salespeople["first_name"] = "Ugo"
salespeople["last_name"] = "Achara"
salespeople["email"] = "UA@gmail.com"
salespeople.save
p salespeople

p "Salespeople: #{Salesperson.all.count}"

# 3. write code to display how many salespeople rows are in the database
all_salespeople = Salesperson.all
# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
prof = Salesperson.find_by({"first_name" => "Ben", "last_name" => "Block"})
prof["email"] = "bb@kellog.com"
prof.save

# CHALLENGE:
# 5. write code to display each salesperson's full name
salespeople = Salesperson.all

for person in salespeople
    first_name = person["first_name"]
    last_name = person["last_name"]
p "#{first_name} #{last_name}"
end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
