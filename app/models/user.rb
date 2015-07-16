class User < ActiveRecord::Base
  has_many :users_courses
  has_many :courses, through: :users_courses
  has_many :students, through: :courses
  has_many :projects, through: :students

  validates :email, uniqueness: true, presence: true
  validates :password, presence: true


  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(name, password)
    user = User.find_by(name: name)
    return user if user && user.password == password
  end
end
