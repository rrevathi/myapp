class AddImageToShops < ActiveRecord::Migration
  def self.up
    add_column :shops, :image, :string
  end

  def self.down
    remove_column :shops, :image
  end
end
