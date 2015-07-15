class CreateUserMetrics < ActiveRecord::Migration
  def change
    create_table :user_metrics do |t|

      t.timestamps null: false
    end
  end
end
