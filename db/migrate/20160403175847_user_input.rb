class UserInput < ActiveRecord::Migration
  def self.up
    	create_table :models do |t|
    		t.string :name
        t.string :email
        t.string :company
    end
  end

  def self.down
    drop_table :models
  end
end
