class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :body
      t.references :todo

      t.timestamps
    end
    add_index :items, :todo_id
  end
end
