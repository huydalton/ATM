class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|

      t.string :name, :null => false
      t.string :pin_hash, :null => false
      t.string :pin_salt, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
