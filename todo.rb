require_relative 'config/application'

# puts "Put your application code in #{File.expand_path(__FILE__)}"


action = ARGV[0]
bla = ARGV[1..-1].join(" ")

if action == "list"
  Controllers.all
elsif action == "add"
  Controllers.create(bla)
  Controllers.all
elsif action == "delete"
  Controllers.delete(bla)
  Controllers.all
elsif action == "completed"
  Controllers.complete(bla)
  Controllers.all
else
  puts "Error, can only run this ruby file with these actions: list, add, delete or completed...Goodbye!!!"
end

# #driver code
# $ ruby todo.rb list
# 1. Bake a delicious blueberry-glazed cheesecake
# 2. Write up that memo and fax it out
# 3. Conquer the world

# $ ruby todo.rb delete 3
# Deleted "Conquer the world" from your TODO list...

# $ ruby todo.rb list
# 1. Bake a delicious blueberry-glazed cheesecake
# 2. Write up that memo and fax it out
