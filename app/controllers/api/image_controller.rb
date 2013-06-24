class Api::ImageController < ApplicationController

def find  	
	x = {'position' => params[:position], 'survey' => params[:survey]}
    @image = Image.new(x)
    @image.urls
    @urls = @image['url']     
	render json: @urls   
end

end
