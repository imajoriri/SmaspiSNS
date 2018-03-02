class Smaspi < ApplicationRecord
  mount_uploader :image, SmaspiImagesUploader
  has_many :tweets

  validates :image, presence: true

  # ランダムでsmaspiを取得
  def self.random_find
    offset(rand(Smaspi.count)).first
  end 

end
