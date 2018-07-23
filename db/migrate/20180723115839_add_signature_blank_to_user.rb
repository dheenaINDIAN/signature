class AddSignatureBlankToUser < ActiveRecord::Migration[5.1]
  def up
    add_attachment :users, :signature_blank
  end

  def down
    remove_attachment :users, :signature_blank
  end
end
