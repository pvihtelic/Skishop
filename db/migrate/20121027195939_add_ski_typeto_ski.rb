class AddSkiTypetoSki < ActiveRecord::Migration
  def up
  	add_column :skis, :skitype, :string
  end

  def down
  end
end
