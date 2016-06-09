class User < ActiveRecord::Base
  has_many :games
  has_many :ideas
  has_secure_password
  validates :email, presence: true, uniqueness: true
  before_save :default_user_name
  private
    def default_user_name
      self.user_name ||= "Anonymous"
    end
end
