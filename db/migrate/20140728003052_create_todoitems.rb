class CreateTodoitems < ActiveRecord::Migration
  def change
    create_table :todoitems do |t|
      t.date :due_date
      t.string :task_title
      t.string :description
      t.references :todolist, index: true

      t.timestamps
    end
  end
end
