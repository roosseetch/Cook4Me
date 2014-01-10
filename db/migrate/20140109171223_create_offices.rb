class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :address
      t.datetime :date_creation

      t.integer  :country_id
      t.integer  :city_id

      t.timestamps
    end
    ## Add dependings (rooss)
    add_index :offices, :country_id
    add_index :offices, :city_id
  end
end
