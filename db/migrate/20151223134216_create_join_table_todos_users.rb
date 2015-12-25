class CreateJoinTableTodosUsers < ActiveRecord::Migration
  def change
    create_table :todos_users, id: false do |t|
      t.belongs_to :todo, index: true
      t.belongs_to :user, index: true
    end
  end
end
