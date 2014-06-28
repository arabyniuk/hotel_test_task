class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
	  t.text :description

      t.belongs_to :motel
      t.timestamps
    end
  end
end
