require 'image_processing/mini_magick'

class OptimizeImageAndUploadJob < ApplicationJob
  queue_as :default

  def perform(image_path)
   ImageProcessing::MiniMagick
      .source(file)
      .resize_to_limit(800, 800)
      .convert("png")
      .call
  end
end
