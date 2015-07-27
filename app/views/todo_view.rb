class TodoView
#1) TO LIST ALL---
  def self.list_all(a)
    puts "TODO list:"
    a.each do |x, index|
      complete = if x.completed == "Yes"
        " -- [1]"
      else
        " -- [0]"
      end
      puts "#{x.id}." + " " + x.task + complete
    end
  end

#2) TO CREATE ONE TASK---
  def self.list_create(taskdescription)
    puts "Appended \"#{taskdescription}\" TO your TODO list..."
    puts " "
  end

#3) TO DELETE ONE TASK---
  def self.list_delete(task)
    puts "Deleted \"#{task}\" FROM your TODO list..."
    puts " "
  end


#4) TO TICK COMPLETE 'YES' ON ONE TASK---

  def self.complete_one_task(task)
    puts "Completed this task: \"#{task}\" ON your TODO list..."
    puts " "
  end

  #5) TO TICK UNCOMPLETE ON ONE TASK---

  def self.uncomplete_one_task(task)
    puts "UNcompleted this task: \"#{task}\" ON your TODO list..."
    puts " "
  end

end