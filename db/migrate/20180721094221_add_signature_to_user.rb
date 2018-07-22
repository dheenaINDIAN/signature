class AddSignatureToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :signatures, :text
  end
end
