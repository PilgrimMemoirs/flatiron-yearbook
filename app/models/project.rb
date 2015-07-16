class Project < ActiveRecord::Base
  has_many :students
  has_many :courses, through: :students
  has_many :users, through: :courses
end
