class Listing < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x400>", :thumb => "150x200>" }, :default_url => "/images/Mortlach_Rare_Old.png"
  # 這行要加
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
