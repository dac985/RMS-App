class MainController < ApplicationController
  def new
    @lbxids = Lbxid.new
  end
  
  def create
  # render plain: params[:lbxids].inspect 
   @lbxids = Lbxid.new(lbxids_params)
   @lbxids.save
   redirect_to lbxids_show(@lbxids)
  end
  
  private
    def lbxids_params
      params.require(:lbxids).permit(:lbxids)
    end
end
