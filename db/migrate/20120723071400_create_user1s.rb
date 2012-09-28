class CreateUser1s < ActiveRecord::Migration
  def self.up
    create_table :user1s do |t|
      t.string :provider
      t.string :uid
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :user1s
  end
end
