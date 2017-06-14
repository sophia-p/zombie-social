class AddFavHotSauceToZombies < ActiveRecord::Migration[5.1]
  def change
    add_column :zombies, :fav_hot_sauce, :string
  end
end
