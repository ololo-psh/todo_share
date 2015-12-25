class AddSharedToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :shared, :boolean, default: false
  end
end
