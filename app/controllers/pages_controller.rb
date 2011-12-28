class PagesController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def help
  end
  
  def arachni
  end
  
end
