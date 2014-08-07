class Todoitem < ActiveRecord::Base
  belongs_to :todolist
  belongs_to :user
  has_and_belongs_to_many :tags
  
  default_scope { order due_date: :asc}
end
