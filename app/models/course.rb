class Course < ActiveRecord::Base
  has_many :students
  has_many :projects, through: :students

  has_many :users_courses
  has_many :users, through: :users_courses
end
