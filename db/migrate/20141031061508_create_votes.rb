class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :solution_id

      t.timestamps
    end
  end
end
