class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.integer :post_id
      t.text :text

      t.timestamps
    end

    add_reference :comments, :user, foreign_key: true
    add_reference :comments, :post, foreign_key: true

    add_index :comments, :user_id
    add_index :comments, :post_id
  end
end
