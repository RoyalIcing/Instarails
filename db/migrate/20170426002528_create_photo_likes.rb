class CreatePhotoLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_likes do |t|
      t.references :user, foreign_key: true
      t.references :photo, foreign_key: true

      t.timestamps
    end
    # Can a user like a photo more than once? No.
    # Add a unique index to ensure this.
    add_index :photo_likes, [:user_id, :photo_id], unique: true
  end
end
