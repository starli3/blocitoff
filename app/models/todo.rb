class Todo < ActiveRecord::Base
  attr_accessible :description, :user_id
  belongs_to :user

end
