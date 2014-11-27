class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
    	t.integer :user_id
    	t.string :title
    	t.string :description
    	t.string :relation

      t.timestamps
    end
  end
end
