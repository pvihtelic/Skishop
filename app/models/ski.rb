class Ski < ActiveRecord::Base
  attr_accessible :link, :price, :title, :url

  validates_presence_of :url
  
end
