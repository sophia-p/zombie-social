class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
    	t.text :content, null:false
    	t.references :zombie, null:false

      	t.timestamps
    end
  end
end
