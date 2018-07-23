class User < ApplicationRecord
  do_not_validate_attachment_file_type :signature_img
  has_attached_file :signature_img, :default_url => ""
  has_attached_file :signature_blank, :default_url => ""

  validates :signature_img, presence: { message: 'Please enter valid signature on image' }
  validates :signature_blank, presence: { message: 'Please enter valid signature on blank' }

  before_save :set_file_name

  def set_file_name
    self.signature_img_file_name = "#{self.first_name}_sign_img"
    self.signature_blank_file_name = "#{self.first_name}_sign"
  end
end
