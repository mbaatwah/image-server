class HomeController < ApplicationController
    def index
        render
    end

    def create
        file = params[:file]
        if file.present?
            filename = SecureRandom.uuid + ".jpg"
            File.open(Rails.root.join("public", "images", filename), mode: "wb") do |f|
                f.write(file.read)
            end
            render json: { filename: filename }
        end
    end
end
