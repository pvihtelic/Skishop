class Ski < ActiveRecord::Base
  attr_accessible :link, :price, :title, :url, :skitype

  validates_presence_of :url
  
end
