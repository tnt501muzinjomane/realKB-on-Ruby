class CreateSolutionsdisplays < ActiveRecord::Migration
  def change
    create_table :solutionsdisplays do |t|
      t.string :name

      t.timestamps
    end
  end
end
