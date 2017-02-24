class Api::V1::PhotosController < ApplicationController
  before_action :authenticate_user!

  def index
    @photos = PhotoResource.all_active.limit(9)
    render 'index'
  end

end
