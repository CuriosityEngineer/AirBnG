class ProfileController < ApplicationController

  before_action :authenticate_user!

  def show
    @profiles = User.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  def new
  end
end
