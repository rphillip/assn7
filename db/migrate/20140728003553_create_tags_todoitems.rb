class CreateTagsTodoitems < ActiveRecord::Migration
  def change
    create_table :tags_todoitems, id: false do |t|
      t.belongs_to :tag
      t.belongs_to :todoitem
    end
  end
end
