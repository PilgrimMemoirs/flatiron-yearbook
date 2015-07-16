class Student < ActiveRecord::Base
  belongs_to :course
  belongs_to :project
  has_many   :users, through: :course


  validates :github, uniqueness: true, presence: true
  validates :first_name, presence: true
end
