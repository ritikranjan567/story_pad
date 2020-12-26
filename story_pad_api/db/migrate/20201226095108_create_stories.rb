class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :content, limit: 100000
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
