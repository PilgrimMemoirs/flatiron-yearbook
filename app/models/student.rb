class Student < ActiveRecord::Base
  belongs_to :course
  belongs_to :project
  has_many   :users, through: :course
end
