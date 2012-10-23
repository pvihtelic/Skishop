class CreateSkis < ActiveRecord::Migration
  def change
    create_table :skis do |t|
      t.string :url
      t.string :title
      t.string :price
      t.string :link

      t.timestamps
    end
  end
end
