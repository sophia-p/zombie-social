class CreateZombies < ActiveRecord::Migration[5.1]
  def change
    create_table :zombies do |t|
      t.string :username, null: false
      t.string :email, null:false
      t.string :password_digest
      t.attachment :image

      t.timestamps
    end
  end
end
