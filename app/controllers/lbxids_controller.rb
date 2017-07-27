class LbxidsController < ApplicationController
  before_action :set_lbxid, only: [:show, :edit, :update, :destroy]

  # GET /lbxids
  # GET /lbxids.json
  def index
    @lbxids = Lbxid.all
  end

  # GET /lbxids/1
  # GET /lbxids/1.json
  def show
  end

  # GET /lbxids/new
  def new
    @lbxid = Lbxid.new
  end

  # GET /lbxids/1/edit
  def edit
  end

  # POST /lbxids
  # POST /lbxids.json
  def create
    @lbxids = Lbxid.new(lbxid_params)

    lines = @lbxids.split("\r\n")
    
    lines.each do |x|
      puts x
    end
     
  end

  # PATCH/PUT /lbxids/1
  # PATCH/PUT /lbxids/1.json
  def update
    respond_to do |format|
      if @lbxid.update(lbxid_params)
        format.html { redirect_to @lbxid, notice: 'Lbxid was successfully updated.' }
        format.json { render :show, status: :ok, location: @lbxid }
      else
        format.html { render :edit }
        format.json { render json: @lbxid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lbxids/1
  # DELETE /lbxids/1.json
  def destroy
    @lbxid.destroy
    respond_to do |format|
      format.html { redirect_to lbxids_url, notice: 'Lbxid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lbxid
      @lbxid = Lbxid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lbxid_params
      params.require(:lbxid).permit(:lbxids)
    end
end
