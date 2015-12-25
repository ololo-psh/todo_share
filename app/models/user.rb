class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :todos, foreign_key: "creator_id"
  has_and_belongs_to_many :assigned_tasks,
                          class_name: "Todo",
                          foreign_key: "user_id",
                          association_foreign_key: "todo_id"

  def all_todos
    (todos + assigned_tasks).uniq
  end
end
