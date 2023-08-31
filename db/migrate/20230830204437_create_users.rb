class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo
      t.text :bio
      t.integer :posts_counter

      t.timestamps
    end

    add_reference :users, :post, foreign_key: true
    add_reference :users, :like, foreign_key: true

	add_index :users, :post_id
	add_index :users, :like_id
  end
end
