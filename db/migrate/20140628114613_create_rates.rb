class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|

      t.decimal :value, precision: 10, scale: 1

      t.belongs_to :motel
      t.timestamps
    end
  end
end
