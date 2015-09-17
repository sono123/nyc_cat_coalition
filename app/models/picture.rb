class Picture < ActiveRecord::Base
	belongs_to :cat
	has_attached_file :image, styles: { large: "768x432>", medium: "384x216>", thumb: "128x72>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
