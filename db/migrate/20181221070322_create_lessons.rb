class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :category_id
      t.integer :number_questions

      t.timestamps
    end
  end
end
