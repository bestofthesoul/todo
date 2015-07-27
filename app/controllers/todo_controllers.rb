#this is the model to do add, create, delete and view

class TodoControllers
#1) TO LIST ALL---
  def self.list_all
    idreset
    a = Task.all
    TodoView.list_all(a) #to list the sentence description
  end

  def self.idreset
     a= Task.all
     a.each_with_index do|x, index|
       x.update(id: index+1)
     end
  end

#2) TO CREATE ONE TASK---
  def self.list_create(taskdescription)
    Task.create(task: taskdescription, completed: "No")
    TodoView.list_create(taskdescription)
  end

#3) TO DELETE ONE TASK---
  def self.list_delete(num)
    a = Task.find_by(id: num.to_i)
    if a.nil?
      puts "Error, task id not found"
      puts " "
      else
      TodoView.list_delete(a.task)
      a.destroy
    end

  end


#4) TO TICK COMPLETE 'YES' ON ONE TASK---

  def self.complete_one_task(num)
    a = Task.find_by(id: num.to_i)
    if a.nil?
      puts "Error, task id not found"
      puts " "
      elsif a.completed == "Yes"
        puts "Task is already completed! Do nothing on list"
        puts " "
      else
      a.update(completed: "Yes")
      TodoView.complete_one_task(a.task)
    end
  end

  #5) TO TICK UNCOMPLETE ON ONE TASK---

  def self.uncomplete_one_task(num)
    a = Task.find_by(id: num.to_i)
    if a.nil?
      puts "Error, task id not found"
      puts " "
      elsif a.completed == "No"
        puts "Task is already clicked uncompleted! Do nothing on list"
        puts " "
      else
        a.update(completed: "No")
        TodoView.uncomplete_one_task(a.task)
    end
  end



end









