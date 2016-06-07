class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :games
  validates :tag, presence: true, uniqueness: true
  validates :summary, presence: true
  before_save :default_description
  private
    def default_description
      self.description ||= summary
    end
end
