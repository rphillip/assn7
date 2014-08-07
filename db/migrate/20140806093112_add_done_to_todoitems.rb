class AddDoneToTodoitems < ActiveRecord::Migration
  def change
    add_column :todoitems, :done, :boolean
  end
end
