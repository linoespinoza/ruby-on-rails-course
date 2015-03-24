# == Schema Information
#
# Table name: recipes
#
#  id          :integer          not null, primary key
#  name        :string
#  serves      :integer
#  ingredients :text
#  made_by     :string
#  last_made   :datetime
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Recipe < ActiveRecord::Base
  attr_accessor :name, :serves, :ingredients, :made_by, :last_made, :image
end
