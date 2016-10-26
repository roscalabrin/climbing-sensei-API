class Api::V1::TagsController < ApplicationController
  respond_to :json

  def index
    respond_with (tags = Tag.all)
  end
end
