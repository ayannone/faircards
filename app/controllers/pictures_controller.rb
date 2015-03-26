class PicturesController < ApplicationController

  def index
    # @pictures = Picture.all
    # @picture = Picture.new
    # @picture = Picture.where(:article_package_id => params[:article_package_id])
    @pictures = Picture.where(:code => params[:code])
  end

  # def index
  #   @picture = Picture.where(:code => params[:code])
  #   # @photos = Photo.all
  # end



  def new
    @picture = Picture.new
    @picture.code = SecureRandom.hex(2)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @picture }
    end
  end

  # # GET /photos/new
  # # GET /photos/new.json
  # def new
  #   @photo = Photo.new
  #   @photo.code = SecureRandom.hex(2)
  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.json { render json: @photo }
  #   end
  # end




  def create
    @picture = Picture.new(picture_params)
    # @picture = Picture.new(params[:picture])

    # if @picture.save
    #   render json: { message: "success", fileID: @picture.id }, :status => 200
    # else
    #   render json: { error: @picture.errors.full_messages.join(',')}, :status => 400
    # end     
  
   respond_to do |format|
      if @picture.save
        format.html { redirect_to @picture, notice: 'Picture was successfully created.' }
        format.json { render json: @picture, status: :created, location: @picture }
      else
        format.html { render action: "new" }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # # POST /photos
  # # POST /photos.json
  # def create
  #   @photo = Photo.new(params[:photo])

  #   respond_to do |format|
  #     if @photo.save
  #       format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
  #       format.json { render json: @photo, status: :created, location: @photo }
  #     else
  #       format.html { render action: "new" }
  #       format.json { render json: @photo.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end



  def show
    @picture = Picture.find(params[:id])
  end

  # def show
  #   @photo = Photo.find(params[:id])
  # end



  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    render nothing: true
  end

  # # DELETE /photos/1
  # # DELETE /photos/1.json
  # def destroy
  #   @photo = Photo.find(params[:id])
  #   @photo.destroy
  #   render nothing: true
  # end


private
  def picture_params
    params.require(:picture).permit(:image,:article_package_id,:code)
  end

end

