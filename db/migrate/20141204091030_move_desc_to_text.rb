class MoveDescToText < ActiveRecord::Migration
  def change
    change_column :adverts, :description, :text
  end
end
