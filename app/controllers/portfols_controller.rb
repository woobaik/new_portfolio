class PortfolsController < ApplicationController
    before_action :set_title
    before_action :find_portfolio, only: [:show, :edit, :update, :delete]
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
    def index
      @portfols = Portfol.by_position
    end
    
    def index_all
      @portfols = Portfol.by_position
    end
    
    def sort
      params[:order].each do |key, value|
        Portfolio.find(value[:id]).update(position: value[:position])
      end
      
      render nothing: true
    end

    def new
      @portfol = Portfol.new
    end

    def create
      @portfol = Portfol.new(portfol_params)
      
      if @portfol.save
        flash[:success] = "Your Entry has been successfully added."
        redirect_to @portfol
      else
        flash[:error] = "There was something wrong with your entry."
        render :new
      end
    
    end

    def edit
    end

    def update
      if @portfol.update
        flash[:success] = "Your Portfolio has been successfully updated!"
        redirect_to @portfol
      else
        flash[:errror] = "There was something wrong with your entry."
        render :edit
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

    def set_title
      @title = "Portfolio || Joungwoo baik"
    end

    def find_portfolio
      @portfol = Portfol.find(params[:id])
    end

    def portfol_params
      params.require(:portfol).permit(:title,
                                      :subtitle,
                                      :body,
                                      :main_image,
                                      :thumb_image,
                                      technologies_attributes: [:name, :_destroy])
    end
end
