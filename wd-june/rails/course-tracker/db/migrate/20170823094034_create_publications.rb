class CreatePublications < ActiveRecord::Migration[5.1]
  def change
    create_table :publications do |t|
      t.string :title
      t.string :body
      t.integer :instructor_id

      t.timestamps
    end
  end
end
