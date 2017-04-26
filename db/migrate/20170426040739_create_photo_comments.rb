class CreatePhotoComments < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_comments do |t|
      t.references :user, foreign_key: true
      t.references :photo, foreign_key: true
      t.text :content, null: false, default: ''

      t.timestamps
    end
    # Efficiently find all comments for a given photo — but!
    # Rails already gives us this index with t.references above!
    # add_index :photo_comments, :photo_id
  end
end
