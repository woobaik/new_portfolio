class PortfolsController < ApplicationController
    before_action :find_portfolio, only: [:show]
    def index
      @portfols = Portfol.all.order(created_at: :asc)
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
    end

  private

    def find_portfolio
      @portfol = Portfol.friendly.find(params[:id])
    end

    def portfol_params
      params.require(:portfol).permit(:title,
                                      :subtitle,
                                      :body,
                                      :main_image,
                                      :thumb_image)
    end
end
