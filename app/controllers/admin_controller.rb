class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :user_admin?
  
  def index
  end

  def show
  end
end

