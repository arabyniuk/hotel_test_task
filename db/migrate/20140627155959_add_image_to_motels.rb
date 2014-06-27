class AddImageToMotels < ActiveRecord::Migration
  def change
    add_column :motels, :image, :string
  end
end
