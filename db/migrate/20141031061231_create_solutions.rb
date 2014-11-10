class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.text :solution1
      t.string :image1
      t.text :solution2
      t.string :image2
      t.text :solution3
      t.string :image3
      t.text :solution4
      t.string :image4
      t.text :solution5
      t.string :image5
      t.integer :problem_id
      t.integer :user_id

      t.timestamps
    end
  end
end
