class PageController < ApplicationController
  
  before_action :setup

  def home
  end

  def about_us
    @name = params[:name]
    @email = params[:email]
    @age = params[:age]
    @comments = params[:comments]
  end

  def recipes
  end

  def products
    @products = ['skiis' => 199.99 ]
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

  def setup
    @products = %w(Skiis boots poles mittens mask hat mask)
  end
end
