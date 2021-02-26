class Favorite < ApplicationRecord
  belongs_to :user
  default_scope -> {order(:content)}
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 4}
  validate :valid_SCP

  def valid_SCP 
    errors.add(:base, 'Requires valid SCP number') unless self.content.match?(/[0-4]\d+[1-9]/)
  end
end
