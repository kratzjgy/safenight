class RemoveLatFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :lat, :string
  end
end
