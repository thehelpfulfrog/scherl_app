class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.string :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :favorites, [:user_id, :created_at]
  end
end
