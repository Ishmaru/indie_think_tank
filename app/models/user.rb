class User < ActiveRecord::Base
  has_many :games
  has_many :ideas
  has_many :likes
  has_secure_password
  validates :email, presence: true, uniqueness: true
  before_save :default_user_name
  private
    def default_user_name
      # In the case of no user_name given, user_name is set to the email.
      self.user_name ||= email
    end
end
