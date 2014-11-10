class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :problem_id

      t.timestamps
    end
  end
end
