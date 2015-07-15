class CreateUserMetrics < ActiveRecord::Migration
  def change
    create_table :user_metrics do |t|
      t.integer :user_id
      t.integer :problem_id
      t.boolean :anwered_correctly
      t.timestamps :time_taken
    end
  end
end
