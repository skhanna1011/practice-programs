require "httparty"
$url = "http://localhost:3000/api/v2/"
def index
  response = HTTParty.get($url+"tasks")
  tasks = JSON.parse(response.body)
  puts "Listing Tasks"
  tasks.each.with_index {|task, i| puts "#{i+1}. #{task["title"]}(#{task["id"]})"}
end

def new_task
  puts "Enter Title"
  title = gets.chomp
  puts "Enter Due-Date(yyyy-mm-dd)"
  due_date = gets.chomp
  puts "What's the status? (true/false)"
  is_completed = gets.chomp
  response = HTTParty.post($url + "tasks", body: {
    "task" => {
      "title" => title,
      "due_date" => due_date,
      "is_completed" => is_completed
    }
  })
  task = JSON.parse(response.body)
  if task.has_key?("errors")
    puts "These errors prohibitted the task from being created"
    puts task["errors"]
  else
    puts "Task created: #{task["title"]}"
  end
end

def edit_task
  index
  puts "Enter the id of the task you want to update"
  id = gets.chomp
  response = HTTParty.get($url + "tasks/#{id}")
  task = JSON.parse(response.body)
  puts "Enter Title"
  title = gets.chomp
  if !title.empty?
    task["title"] = title
  end
  puts "Enter Due-Date(yyyy-mm-dd)"
  due_date = gets.chomp
  if !due_date.empty?
    task["due_date"] = due_date
  end
  puts "What's the status? (true/false)"
  is_completed = gets.chomp
  if !is_completed.empty?
    task["is_completed"] = is_completed
  end
  response = HTTParty.patch($url + "tasks/#{id}", body: {
    "task" => task
  })
  result = JSON.parse(response.body)
  if result.has_key?("errors")
    puts "These errors prohibitted the task from being created"
    puts result["errors"]
  else
    puts "Task updated: #{result["title"]}"
  end
end

def show_task
  index
  puts "Enter the id of the task you want to see"
  id = gets.chomp
  response = HTTParty.get($url + "tasks/#{id}")
  task = JSON.parse(response.body)
  puts "Title: #{task["title"]}\nDue-date: #{task["due_date"]}\nStatus: #{task["is_completed"]}"
end

def delete_task
  index
  puts "Enter the id of the task you wanna delete"
  id = gets.chomp
  response = HTTParty.delete($url +"tasks/#{id}")
  task = JSON.parse(response.body)
  if task.has_key?("alert")
    puts task["alert"]
  else
    puts "#{task["title"]}-#{task["notice"]}"
  end
end

continue = "y"
while continue == "y"
  puts "1. List\n2. Add\n3. Edit\n4. Show\n5. Delete"
  puts "Enter your Option"
  option = gets.to_i
  case option
  when 1
    index
  when 2
    new_task
  when 3
    edit_task
  when 4
    show_task
  when 5
    delete_task
  else
    puts "Invalid Option"
  end
  puts "Do you wish to continue"
  continue = gets.chomp
end
puts "Program Completed"