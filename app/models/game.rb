class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :idea
  validates :title, presence: true, uniqueness: true
  validates :summary, presence: true
  validates :url, presence: true, uniqueness: true
  before_save :default_description
  before_save :assign_user


  private
    def default_description
      self.description ||= summary
    end
    def assign_user
      self.user_id ||= current_user
    end
end
