class Api::V1::TagsController < ApplicationController
  respond_to :json

  def index
    tags = Tag.all
    render json: tags, each_serializer: TagSerializer
  end
end
