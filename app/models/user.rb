class User < ActiveRecord::Base
  has_secure_password
  validates :user_name, presence: true, uniqueness: true

    after_initialize :default_email

  private
    def default_email
      self.email ||= "NONE"
    end
end
