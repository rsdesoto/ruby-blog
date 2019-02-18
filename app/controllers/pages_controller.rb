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
        @page = Page.new(params)
        render plain: params.to_json
    end
end
