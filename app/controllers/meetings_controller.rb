class MeetingsController < ApplicationController
    def index
        @meetings = Meeting.all
    end
   
    def show
        @meeting = Meeting.find(params[:id])
    end

    def new
    end

    def create
        @meeting = Meeting.new(article_parmams)

        @meeting.save
        redirect_to @meeting
    end

    private
        def article_parmams
            params.require(:meeting).permit(:title, :description)
        end
end
