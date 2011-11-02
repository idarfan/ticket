class CreateCtickets < ActiveRecord::Migration
  def self.up
    create_table :ctickets do |t|
      t.integer :year
      t.integer :month
      t.string :cticketnum
      t.integer :catbig
      t.integer :catsmall

      t.timestamps
    end
  end

  def self.down
    drop_table :ctickets
  end
end
