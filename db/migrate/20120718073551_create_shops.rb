class CreateShops < ActiveRecord::Migration
  def self.up
    create_table :shops do |t|
      t.string :name
      t.integer :age
      t.string :city
      t.date :date
     

      t.timestamps
    end
  end

  def self.down
    drop_table :shops
  end
end

