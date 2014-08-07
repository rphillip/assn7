require_relative '../config/environment'

## show all users
puts ">>All users in the db"
puts User.all.each { |u| puts "#{u.login}  #{u.password}"
}

##  show first User
puts ">>First user is#{User.first.login} #{User.first.password}"

puts ">>show first user account"
puts "#{User.first.account.first_name }#{ User.first.account.last_name} #{User.first.account.gender} #{User.first.account.age}"


puts ">>show first user todolists ordered by ascending date"
puts User.first.todolists.all.each{ |u| puts "#{u.list_name} #{u.list_due_date}"
}

puts ">>show first user first todolist todoitems by ascending date"
puts User.first.todolists.first.todoitems.all.each{ |u| puts "#{u.task_title} #{u.description} #{u.due_date}"}

puts ">>show first user first todolist first todoitem tags"
puts User.first.todolists.first.todoitems.first.tags.all.each{ |u| puts "#{u.tag_name}"
}

puts ">>show all tags"
puts Tag.all.each { |u| puts "#{u.tag_name}"
}

puts ">>show first tag then many many mapping to todoitems"
puts Tag.first.tag_name
puts Tag.first.todoitems.all.each { |u| 
puts "#{u.task_title} #{u.description}"
}

puts ">>show first user access to all todoitems"
puts User.first.todoitems.all.each { |u| 
puts "#{u.task_title}"
}
puts ">>find Exercise"
puts User.first.todoitems.find_by(task_title:"Exercise").task_title

puts ">>show last User"
puts User.last.account.first_name

puts ">>show last user gender and age"
puts "#{User.last.account.gender} #{User.last.account.age}"

puts ">>tries to update last user to alien gender"
User.last.account.update(gender:  "alien")
puts User.last.account.gender

puts ">>tries to update last user to age 18"
User.last.account.update(age: 18)
puts User.last.account.age

puts ">>tries to update last user to age 120"
User.last.account.update(age: 120)
puts User.last.account.age
