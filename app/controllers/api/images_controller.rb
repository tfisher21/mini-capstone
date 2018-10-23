class Api::ImagesController < ApplicationController
  def create

    @image = Image.new(
      name: params["name"],
      source: params["source"],
      product_id: params["product_id"]
      )

    @image.save

    render json: {message: "New Image Saved!"}
  end
end
