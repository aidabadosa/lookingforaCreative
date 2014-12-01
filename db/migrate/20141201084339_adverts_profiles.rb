class AdvertsProfiles < ActiveRecord::Migration
  def change
  	create_table :adverts_profiles, id: false do |t|
      t.belongs_to :advert
      t.belongs_to :profile
    end
  end
end
