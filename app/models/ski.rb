class Ski < ActiveRecord::Base
  attr_accessible :link, :price, :title, :url, :skitype, :brand, :name, :gender, :description, :size, :details, :reviews

  validates_presence_of :url
  
end
