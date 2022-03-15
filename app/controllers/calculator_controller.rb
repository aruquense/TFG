class CalculatorController < ApplicationController

  require 'calculate.rb'

  def index
  end

  def new
    @result = Calculate.send("test_reloj", *[params[:a], params[:b], params[:c]])
    puts "\n\n\n\n Resultado #{@result} \n\n\n"
    render :index
  end

end