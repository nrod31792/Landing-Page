class UserInput < ActiveRecord::Migration
  def change
    	create_table :models do |t|
    		t.string :name
        t.string :email
        t.string :company
    end
  end
end
