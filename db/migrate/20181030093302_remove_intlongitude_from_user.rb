class RemoveIntlongitudeFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :intlongitude, :integer
  end
end
