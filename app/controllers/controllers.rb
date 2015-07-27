#this is the model to do add, create, delete and view

class Controllers
#1) TO LIST ALL---
  def self.all
    a = Task.all
    # Word.all #to list the sentence description

    # a.each do |x|
    #     puts "#{x.id}. "+ x.task
    # end
    puts "TODO list:"
    a.each do |x|
      if x.completed == "Yes"
        puts "#{x.id}." + " " + x.task + "-- [1]"
      else
        puts "#{x.id}." + " " + x.task + "-- [0]"
      end
    end

  end

#2) TO CREATE ONE TASK---
  def self.create(taskdescription)
    Task.create(task: taskdescription, completed: "No")
    puts "Appended #{taskdescription} TO your TODO list..."
    puts " "
  end

#3) TO DELETE ONE TASK---
  def self.delete(num)
    a = Task.find_by(id: num.to_i)
    if a.nil?
      puts "Error, task id not found"
      puts " "
      else
      a.destroy
      puts "Deleted #{a.task} FROM your TODO list..."
      puts " "
    end
  end


#4) TO TICK COMPLETE 'YES' ON ONE TASK---

  def self.complete(num)
    a = Task.find_by(id: num.to_i)
    if a.nil?
      puts "Error, task id not found"
      puts " "
      elsif a.completed == "Yes"
        puts "Task is already completed! Do nothing on list"
        puts " "
      else
      a.update(completed: "Yes")
      puts "Completed this task: #{a.task} ON your TODO list..."
      puts " "
    end
  end



end