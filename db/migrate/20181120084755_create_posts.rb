class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :username
      t.string :userphone
      t.string :start
      t.string :startpoint
      t.string :goal
      t.integer :jobtype

      t.timestamps null: false
    end
  end
end
