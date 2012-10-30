class AddBrandAndNameAndGenderAndDescriptionAndSizeAndStoresAndDetailsAndReviewsToSki < ActiveRecord::Migration
  def change
  	add_column :skis, :brand, :string
  	add_column :skis, :name, :string
  	add_column :skis, :gender, :string
  	add_column :skis, :description, :text
  	add_column :skis, :size, :string
  	add_column :skis, :stores, :string
  	add_column :skis, :details, :string
  	add_column :skis, :reviews, :string
  end
end
