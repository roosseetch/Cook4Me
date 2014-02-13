class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.string :name
      # t.string :image_url

      t.timestamps
    end
  end

  def self.up
    add_attachment :chefs, :avatar
  end

  def self.down
    remove_attachment :chefs, :avatar
  end
end
