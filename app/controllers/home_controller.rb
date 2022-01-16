class HomeController < ApplicationController
  def index
  end
  def hello
    @name = params[:name]
    puts '/n/n/n'+@name+'/n/n/n'
    redirect_to home_index_url
  end
end
