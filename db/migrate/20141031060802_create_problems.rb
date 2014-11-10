class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :title
      t.text :description
      t.string :tag
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
