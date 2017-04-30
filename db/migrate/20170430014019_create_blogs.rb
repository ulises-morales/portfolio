class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.string :slug
      t.integer :status

      t.timestamps
    end
    add_index :blogs, :slug, unique: true
  end
end
