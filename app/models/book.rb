class Book < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :book_comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true
  validates :body, length: {in: 1..200}, if: proc { |s| s.body.present? }

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
