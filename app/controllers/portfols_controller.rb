class PortfolsController < ApplicationController
    before_action :find_portfolio, only: [:show, :edit, :update, :delete]
    def index
      @portfols = Portfol.all.order(created_at: :asc)
    end

    def new
      @portfol = Portfol.new
      3.times {@portfol.technologies.build}
    end

    def create
      @portfol = Portfol.new(portfol_params)

      if @portfol.save
        redirect_to @portfol
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @portfol.update
        redirect_to @portfol
      end
    end

    def show
    end

    def destroy
      if @portfol.destroy
        redirect_to home_path
      end

    end

  private

    def find_portfolio
      @portfol = Portfol.find(params[:id])
    end

    def portfol_params
      params.require(:portfol).permit(:title,
                                      :subtitle,
                                      :body,
                                      :main_image,
                                      :thumb_image,
                                      technologies_attributes: [:name])
    end
end
