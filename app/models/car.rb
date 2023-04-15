class Car < ApplicationRecord
  has_one_attached :image

  validates :car_model, presence: true
  validates :years, presence: true
  validates :body_price, presence: true
  validates :total_price, presence: true
  validates :image, presence: true
  has_many :favorites, dependent: :destroy


  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end
end
