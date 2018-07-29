class ArticleComment < ApplicationRecord
  # Relation ship
  belongs_to :article

  # Validation
  validates :body, length: { maximum: 140 }
end
