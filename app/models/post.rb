class Post < ActiveRecord::Base
  belongs_to :user
  has_attached_file :post_image, styles: { large: "800x800>", medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :post_image, content_type: /\Aimage\/.*\Z/
end
