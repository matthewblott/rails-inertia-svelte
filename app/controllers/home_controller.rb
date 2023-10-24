class HomeController < ApplicationController

  def index
    render inertia: 'home/index'
  end

  def welcome
  end

  def about
  end

end
