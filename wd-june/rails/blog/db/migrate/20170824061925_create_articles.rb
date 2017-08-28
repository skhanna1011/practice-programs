class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.integer :user_id
      t.boolean :allow_comments, default: true

      t.timestamps
    end
  end
end
