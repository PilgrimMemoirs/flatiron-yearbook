class Course < ActiveRecord::Base
  has_many :students
  has_many :projects, through: :students

  has_many :users_courses
  has_many :users, through: :users_courses

  validates :code, presence: true, uniqueness: true
  validates :passcode, presence: true
end
