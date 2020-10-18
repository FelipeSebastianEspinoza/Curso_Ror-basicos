class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  def new
    @image = Image.new
  end

  # def index
  #   @images = Image.all
  # end

  def index
    @images = Image.where user_id: current_user.id
  end

  def create
    # render plain: params[:image].inspect
    @image = current_user.images.new image_params
    # @image = Image.new image_params
    if @image.save
      return redirect_to @image
    end

    render :new
  end

  def show
    #  @image = Image.find params[:id]
  end

  def edit
    #   @image = Image.find params[:id]
  end

  def destroy
    #   @image = Image.find params[:id]
    @image.destroy
    redirect_to images_path
  end

  def update
    #  @image = Image.find params[:id]
    @image.update image_params
    redirect_to @image
  end

  private

  def image_params
    params.require(:image).permit(:description, :picture)
  end

  def set_image
    @image = Image.find params[:id]
  end
end
