class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :address
      t.string :image_url


      t.integer  :country_id
      t.integer  :city_id
      # The timestamps macro adds two columns, created_at and updated_at.
      # These special columns are automatically managed by Active Record if they exist.
      t.timestamps
    end
    ## Add dependings (rooss)
    add_index :offices, :country_id
    add_index :offices, :city_id
  end
end
