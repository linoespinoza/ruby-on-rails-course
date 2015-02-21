class PageController < ApplicationController
  def home
  end

  def about_us
  end

  def recipes
  end

  def products
  end

  def calendar
    @year = params[:year]
    @month = params[:month]
    @name = "Lino Espinoza"
    @my_time = Time.now
    @products = %w(Skiis boots poles mittens) # = ["Skiis", "boots", "poles", "mittens"]
  end

  def blog
  end

  def login
  end
end
