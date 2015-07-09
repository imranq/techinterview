class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :title
      t.text :body
      t.text :answer
      t.text :solution
      t.text :videolink
      
      t.timestamps null: false
    end
  end
end
