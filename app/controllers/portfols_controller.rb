class PortfolsController < ApplicationController

    def index
      @portfols = Portfol.all
    end

    def new
      @portfol = Portfol.new
    end

    def create
      @portfol = Portfol.new(portfol_params)

      if @portfol.save
        redirect_to @portfol
      end
    end

    def edit
      @portfol = Portfol.find(params[:id])
    end

    def update
      @portfol = Portfol.find(params[:id])

      if @portfol.update
        redirect_to @portfol
      end
    end

    def show
      @portfol = Portfol.find(params[:id])
    end

  private

    def portfol_params
      params.require(:portfol).permit(:title,
                                      :subtitle,
                                      :body,
                                      :main_image,
                                      :thumb_image)
    end
end
