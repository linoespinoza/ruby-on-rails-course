class Recipe < ActiveRecord::Base
  attr_accessor :name, :serves, :ingredients, :made_by, :last_made, :image
end
