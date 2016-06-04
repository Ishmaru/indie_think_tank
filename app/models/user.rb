class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, uniqueness: true
    # after_initialize :default_email
  before_save :default_user_name
  private
    def default_user_name
      self.user_name ||= email
    end
end
