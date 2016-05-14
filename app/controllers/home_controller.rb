class HomeController < ApplicationController
  def index
  end

  def upload
    file = params[:pic]
    uploader = ShooterUploader.new
    uploader.store!(file)
    
    flash[:notice] = '파일이 성공적으로 전송되었습니다.'
    redirect_to "/home/index"
  end
end
