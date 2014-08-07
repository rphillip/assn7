# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Account.destroy_all
Todolist.destroy_all
Todoitem.destroy_all
Tag.destroy_all

## create userse
users= User.create! [
{ login: "Matt", password: "abc123"},
{ login: "Tim", password: "abc123"},
{ login: "elibook", password: "asd"}
]

## creat accout in user
User.find_by(login: "Matt").account = Account.create(gender: "female", age: 30, first_name:"Anna", last_name:"Banana")
User.find_by(login: "Tim").account = Account.create(gender: "male", age: 88, first_name:"Chad", last_name:"Vader")
User.find_by(login: "elibook").account = Account.create(gender: "N/A", age: 55, first_name:"Eli", last_name:"Book")

## create todolists in User
#User.first.todolists=Todolist.create [
#{ list_name:"Important", list_due_date:'2003-01-01'},
#{ list_name:"Lazy", list_due_date:'2006-03-01'},
#{ list_name:"Forgettable", list_due_date:'2003-04-01'}
#]

## create todoitems in todolist
#User.first.todolists.find_by(list_name: "Important").todoitems = Todoitem.create [
#{ task_title:"Groceries", due_date:'2002-08-01', description: "Buy Groceries"},
#{ task_title:"Exercise", due_date:'2002-03-02', description: "Run in park"},
#{ task_title:"Dance", due_date:'2002-07-01', description: "Goto dance lessons"}
#]
#User.first.todolists.find_by(list_name: "Lazy").todoitems = Todoitem.create [
#{ task_title:"Cheese", due_date:'2004-01-01', description: "Buy Cheese"},
#{ task_title:"Shoes", due_date:'2003-01-02', description: "Replace shoes"},
#{ task_title:"Sleep", due_date:'2005-01-04', description: "Goto sleep lessons"}
#]
#User.first.todolists.find_by(list_name: "Forgettable").todoitems = Todoitem.create [
#{ task_title:"Pants", due_date:'2003-01-01', description: "Get rid of pants"},
#{ task_title:"Car", due_date:'2003-04-02', description: "Burn Car"},
#{ task_title:"Camera", due_date:'2003-03-04', description: "Get a new camera"}
#]

## create and add tags for todoitems in todolist
#Tag.create([{tag_name: "Money"},{tag_name:"Store"},{tag_name:"Weekly"},{tag_name: "Health"},{tag_name:"Daily"}])
##User.first.todolists.find_by(list_name: "Important").todoitems.find_by(task_title:"Groceries").tags << Tag.find_by(tag_name: "Money")
#User.first.todolists.find_by(list_name: "Important").todoitems.find_by(task_title:"Groceries").tags << Tag.find_by(tag_name: "Weekly")
#User.first.todolists.find_by(list_name: "Important").todoitems.find_by(task_title:"Groceries").tags << Tag.find_by(tag_name: "Store")
#User.first.todolists.find_by(list_name: "Important").todoitems.find_by(task_title:"Exercise").tags<< Tag.find_by(tag_name: "Health")
#User.first.todolists.find_by(list_name: "Important").todoitems.find_by(task_title:"Exercise").tags<< Tag.find_by(tag_name: "Weekly")
#User.first.todolists.find_by(list_name: "Important").todoitems.find_by(task_title:"Dance").tags<< Tag.find_by(tag_name: "Health")
#User.first.todolists.find_by(list_name: "Important").todoitems.find_by(task_title:"Dance").tags<< Tag.find_by(tag_name: "Weekly")
#User.first.todolists.find_by(list_name: "Lazy").todoitems.find_by(task_title:"Cheese").tags<< Tag.find_by(tag_name: "Weekly")
#User.first.todolists.find_by(list_name: "Lazy").todoitems.find_by(task_title:"Cheese").tags<< Tag.find_by(tag_name: "Money")
#User.first.todolists.find_by(list_name: "Lazy").todoitems.find_by(task_title:"Cheese").tags<< Tag.find_by(tag_name: "Store")

#User.first.todolists.find_by(list_name: "Lazy").todoitems.find_by(task_title:"Shoes").tags<< Tag.find_by(tag_name: "Money")
#User.first.todolists.find_by(list_name: "Lazy").todoitems.find_by(task_title:"Shoes").tags<< Tag.find_by(tag_name: "Store")

#User.first.todolists.find_by(list_name: "Lazy").todoitems.find_by(task_title:"Sleep").tags<< Tag.find_by(tag_name: "Health")
#User.first.todolists.find_by(list_name: "Lazy").todoitems.find_by(task_title:"Sleep").tags<< Tag.find_by(tag_name: "Daily")

#User.first.todolists.find_by(list_name: "Forgettable").todoitems.find_by(task_title:"Pants").tags<< Tag.find_by(tag_name: "Money")
#User.first.todolists.find_by(list_name: "Forgettable").todoitems.find_by(task_title:"Pants").tags<< Tag.find_by(tag_name: "Store")

#User.first.todolists.find_by(list_name: "Forgettable").todoitems.find_by(task_title:"Car").tags<< Tag.find_by(tag_name: "Money")

#User.first.todolists.find_by(list_name: "Forgettable").todoitems.find_by(task_title:"Camera").tags<< Tag.find_by(tag_name: "Money")
#User.first.todolists.find_by(list_name: "Forgettable").todoitems.find_by(task_title:"Camera").tags<< Tag.find_by(tag_name: "Store")


