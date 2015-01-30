class PagesController < ApplicationController
    def home
        @cars = Car.order("created_at").page(params[:page]).per(20)
    end

    def help
    end

    def about
    end

    def notifs
    end
end
