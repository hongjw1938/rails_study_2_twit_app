class TwitController < ApplicationController
    def index
        @twits = Twit.all
        cookies[:user_name] = "홍종우"
    end
    
    
    def new
        
    end
    
    
    def create
       twit = Twit.new
       twit.content = params[:content]
       twit.ip_address = request.ip
       twit.region = request.location.region
       
       twit.save
       flash[:success] = "새 글이 등록되었습니다."
       
       redirect_to "/twit/#{twit.id}/show"
    end
    
    
    def show
        @twit = Twit.find(params[:id])
        
    end
    
    def edit
        @twit = Twit.find(params[:id])
    end
    
    def update
        
        twit = Twit.find(params[:id])
        twit.content = params[:content]
        twit.ip_address = request.ip()
        twit.region = request.location.region
        
        flash[:success] = "수정이 완료되었습니다."
        
        twit.save
        redirect_to "/twit"
    end
    
    def delete
       twit = Twit.find(params[:id])
       twit.destroy
       
       flash[:error] = "글이 삭제되었습니다."
       redirect_to "/twit"
    end
end
