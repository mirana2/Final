class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.belongs_to :category, index: true
      t.string :title
      t.string :lien
      t.string :image_url
      t.string :icon_url
      t.text :description
      t.text :tuto

      t.timestamps
    end
  end
end