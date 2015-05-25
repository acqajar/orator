class ImagesController < ApplicationController
  before_filter :load_imageable


  def index
  	@imageable = User.find(params[:user_id])
  	@images = @imageable.images
  end

  def new
  	@image = @imageable.images.new
  end

  def create
  	@image = imageable.images.new(params[:image])
  	if @image.save
  		redirect_to [@imageable, :images], notice: "Image Uploaded"
  	else
  		render :new
  	end
  	
  end





private
# take each imageable classes and find one where there is a underscore id parameter
#call find on passing in that parameter
	def load_imageable
		klass = [User].detect { |c| params ["#{c.name.underscore}_id"]} 
		@imageable = klass.find(params["#{klass.name.underescore}_id"])
	end

end
