class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :address
      t.datetime :date_creation

      t.timestamps
    end
  end
end
