class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
     	t.integer :profile_id
    	t.string :portfolio_url
    	

      t.timestamps
    end
  end
end