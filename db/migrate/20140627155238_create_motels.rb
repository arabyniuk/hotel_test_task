class CreateMotels < ActiveRecord::Migration
  def change
    create_table :motels do |t|
      t.string :title
      t.decimal :rating, precision: 5, scale: 1
      t.boolean :breakfast
      t.text :description
      t.float :price

      t.belongs_to :user
      t.timestamps
    end
  end
end
