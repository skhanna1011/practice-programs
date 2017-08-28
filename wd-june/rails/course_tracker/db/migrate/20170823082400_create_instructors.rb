class CreateInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :mobile_no
      t.string :bio

      t.timestamps
    end
  end
end
