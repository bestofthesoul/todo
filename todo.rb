require_relative 'config/application'


action = ARGV[0]
bla = ARGV[1..-1].join(" ")

case action
  when "list"
    TodoControllers.list_all
  when "add"
    TodoControllers.list_create(bla)
    TodoControllers.list_all
  when "delete"
    TodoControllers.list_delete(bla)
    TodoControllers.list_all
  when "complete"
    TodoControllers.complete_one_task(bla)
    TodoControllers.list_all
  when "uncomplete"
    TodoControllers.uncomplete_one_task(bla)
    TodoControllers.list_all
  else
    puts "ERROR, Type ruby todo.rb with action, action options are: list, add, delete, complete and uncomplete"
end







# if action == "list"
#   TodoControllers.idreset
#   TodoControllers.listall
# elsif action == "add"
#   TodoControllers.create(bla)
#   TodoControllers.idreset
#   TodoControllers.listall
# elsif action == "delete"
#   TodoControllers.delete(bla)
#   TodoControllers.idreset
#   TodoControllers.listall
# elsif action == "complete"
#   TodoControllers.complete(bla)
#   TodoControllers.idreset
#   TodoControllers.listall
# elsif action == "uncomplete"
#   TodoControllers.uncomplete(bla)
#   TodoControllers.idreset
#   TodoControllers.listall

# else
#   puts "Error, can only run this ruby file with these actions: list, add, delete,complete or uncomplete...Goodbye!!!"
# end


