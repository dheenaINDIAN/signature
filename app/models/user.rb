class User < ApplicationRecord
  do_not_validate_attachment_file_type :signature_img
  has_attached_file :signature_img, :default_url => "/img.png"

  before_save :set_file_name

  def set_file_name
    self.signature_img_file_name = "#{self.first_name}_sign"
  end
end
