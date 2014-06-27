class AddMotelidToAddress < ActiveRecord::Migration
  def change
  	add_column :addresses, :motel_id, :integer
  end
end
