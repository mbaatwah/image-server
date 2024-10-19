class HomeController < ApplicationController
    def index
        render
    end

    def create
        file = params[:file]
        if file.present?
            filename = SecureRandom.uuid + ".jpg"
            image_path = Rails.root.join("public", "images", filename) 
            File.open(image_path, mode: "wb") do |f|
                f.write(file.read)
            end

            OptimizeImageAndUploadJob.perform_now image_path
            render json: { filename: filename }
        end
    end
end
