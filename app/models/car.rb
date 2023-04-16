class Car < ApplicationRecord
  has_one_attached :image

  validates :car_model, presence: true
  validates :years, presence: true
  validates :body_price, presence: true
  validates :total_price, presence: true
  validates :image, presence: true
  has_many :favorites, dependent: :destroy
  mount_uploader :video_top, VideoUploader

  def self.create_all_ranks
  Car.find(Favorite.group(:car_id).where(created_at: Time.current.all_week).order('count(car_id) desc').limit(10).pluck(:car_id))
  end


  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end
end
