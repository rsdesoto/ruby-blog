class PagesController < ApplicationController
    def index
        @pages = Page.all
    end

    def show
        # render plain: params[:id]
        set_page
        # render plain: @page.title
    end

    def new
        @page = Page.new
    end

    def create
        # @page = Page.new(params)
        # render plain: params.class
        
        @page = Page.new(page_params)
        @page.save
        redirect_to @page
    end

    def edit
        set_page
    end

    def update
        set_page
        
        @page.update(page_params)
        
        redirect_to @page
    end

    def destroy
        set_page
        @page.destroy 
        redirect_to pages_path
    end

    private 
        def page_params
            params.require(:page).permit(:title, :body, :slug)
        end

        def set_page
            @page = Page.find(params[:id])
        end

end
