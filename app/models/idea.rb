class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :games
  has_many :likes
  validates :tag, presence: true
  validates :summary, presence: true
  before_save :default_description

  private
  # In the case of no description given, the description is set to the summary.
    def default_description
      self.description ||= summary
    end
end
