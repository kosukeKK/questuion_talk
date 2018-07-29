class Article < ApplicationRecord
  # Relation ship
  belongs_to :user
  has_many :article_comments

  # validation
  validates :title, presence: true, length: { in: 8..140 }
  validates :description, length: { maximum: 255 }
  validates :flg_under_18, presence: true, inclusion: { in: [true, false] }
end
