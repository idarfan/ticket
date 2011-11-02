class CreateBingos < ActiveRecord::Migration
  def self.up
    create_table :bingos do |t|
      t.integer :year
      t.integer :month
      t.string :ticketnum
      t.integer :classlevel

      t.timestamps
    end
  end

  def self.down
    drop_table :bingos
  end
end
