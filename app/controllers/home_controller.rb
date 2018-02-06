class HomeController < ApplicationController
    def index
    end
    def result
        @name = params[:username]
        
    end
end
