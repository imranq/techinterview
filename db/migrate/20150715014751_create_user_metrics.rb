class CreateUserMetrics < ActiveRecord::Migration
  def change
    create_table :user_metrics do |t|
      t.integer :user_id
      t.integer :problem_id
      t.boolean :answered_correctly
      t.datetime :time_accessed
      t.datetime :time_submitted
    end
  end
end
