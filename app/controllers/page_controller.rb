class PageController < ApplicationController
  
  before_action :setup

  def home
  end

  def about_us
    # flash[:notice] = "Hey, Dave, you can't do that"
    @name = params[:name]
    @email = params[:email]

    if params[:commit]
      flash.now[:error] = ""
      if @name.nil? || @name.empty?
        flash.now[:error] << "Name cannot be blank. <br />"
      end
      if @email.nil? || @email.empty?
        flash.now[:error] << "Email cannot be blank. <br />"
      end
    end
    
    @age = params[:age]
    @comments = params[:comments]
    @products = %w(Skiis poles mittens)
    @selected_product = params[:count]
    @food = params[:food]
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
    @products = { 1 => 'Skiis', 2 => 'boots', 3 => 'poles', 4 => 'mittens' , 5 => 'mask', 6 => 'hat', 7 => 'mask' }
  end
end
