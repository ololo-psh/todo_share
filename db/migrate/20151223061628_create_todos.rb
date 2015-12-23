class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string      :caption
      t.text        :description
      t.datetime    :deadline
      t.belongs_to  :creator, class_name: "User", index: true

      t.timestamps null: false
    end
  end
end
