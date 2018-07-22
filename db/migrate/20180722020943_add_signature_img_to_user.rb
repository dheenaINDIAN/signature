class AddSignatureImgToUser < ActiveRecord::Migration[5.1]
  def up
    add_attachment :users, :signature_img
  end

  def down
    remove_attachment :users, :signature_img
  end
end
