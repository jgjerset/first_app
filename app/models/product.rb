class Product < ActiveRecord::Base
  attr_accessible :description, :url, :image_url, :photo, :price, :source, :title
  validates :title, :description, :url, :image_url, :source, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIV, JPG or PNG image'
  }
  
  has_attached_file :photo, :styles => { :thumb => ["32x32#", :png] },
      :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      :url => "/system/:attachment/:id/:style/:filename"
end
