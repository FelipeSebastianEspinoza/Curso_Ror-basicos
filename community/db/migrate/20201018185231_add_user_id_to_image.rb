class AddUserIdToImage < ActiveRecord::Migration[6.0]
  def change
    add_reference :images, :user, null: false, foreign_key: true
  end
end
