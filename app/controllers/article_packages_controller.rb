class ArticlePackagesController < ApplicationController


  
  # an article package bundles different articles as a packages, e.g. "Christmas Cards Selection"
  # for a special price

  def index
    @article_packages = ArticlePackage.all
  end

  def new
    @article_package = ArticlePackage.new
  end

  def create
    @article_package = ArticlePackage.new(article_package_params)

    respond_to do |format|
      if @article_package.save

        if params[:images]
          #===== The magic is here ;)
          params[:images].each { |image|
            @article_package.pictures.create(image: image)
          }
        end

        format.html { redirect_to @article_package, notice: 'Article Package was successfully created.' }
        format.json { render json: @article_package, status: :created, location: @article_package }
      else
        format.html { render action: "new" }
        format.json { render json: @article_package.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @article_package = ArticlePackage.find(params[:id])
  end

  def update
    @article_package = ArticlePackage.find(params[:id])

    respond_to do |format|
      if @article_package.update(article_package_params)
         @article_package.save

        if params[:images]
          @article_package.pictures.destroy
          params[:images].each { |image|
            @article_package.pictures.create(image: image)
          # @article_package.pictures.update(image: image)
          }
        end

        format.html { redirect_to @article_package, notice: 'Article Package was successfully updated.' }
        format.json { render json: @article_package, status: :updated, location: @article_package }
      else
        format.html { render action: "edit" }
        format.json { render json: @article_package.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @article_package = ArticlePackage.find(params[:id])
  end

  def destroy
  end

  private

  def article_package_params
    params.require(:article_package).permit(:article_package_number, :title, :description, :price, :images)
  end

end
