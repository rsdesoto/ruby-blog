class PagesController < ApplicationController
    def index
        @pages = Page.all
    end

    def show
        # render plain: params[:id]
        @page = Page.find(params[:id])
        # render plain: @page.title
    end

    def new
        @page = Page.new
    end

    def create
        # @page = Page.new(params)
        # render plain: params.class
        page_params = params.require(:page).permit(:title, :body, :slug)
        @page = Page.new(page_params)
        @page.save
        redirect_to @page
    end
end
