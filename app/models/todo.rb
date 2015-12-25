class Todo < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_and_belongs_to_many :performers,
                          class_name: "User",
                          foreign_key: "todo_id",
                          association_foreign_key: "user_id"
end
