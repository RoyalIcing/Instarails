class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.references :user, foreign_key: true
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
