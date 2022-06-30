class RecordsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
  def index
  end

  def new
    @record = Record.new
  end

end
