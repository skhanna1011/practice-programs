class AddsInstructor < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :instructor_id, :integer
  end
end
