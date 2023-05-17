class Rice < ApplicationRecord
  has_many_attached :brand_pics

  # before_create :set_default_brand_pic

  def set_default_brand_pic
    unless brand_pic.attached?
      brand_pic.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'RICE.jpg')), filename: 'default-rice.jpg', content_type: 'image/jpeg')
    end
  end
end
