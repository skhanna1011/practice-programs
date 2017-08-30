class Article < ApplicationRecord
  belongs_to :user
  validate :check_max_articles

  private

  def check_max_articles
    if Article.where('user_id = ?',self.user_id).count >= 3
      self.errors.add(:user_id, "Limit Exceded")
    end
  end
end
