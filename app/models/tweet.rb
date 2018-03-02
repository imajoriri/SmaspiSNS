class Tweet < ApplicationRecord
  belongs_to :smaspi

  def smaspi_name
    smaspi&.name
  end 

  def smaspi_image
    smaspi&.image.to_s
  end 
end
