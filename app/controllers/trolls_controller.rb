class TrollsController < ApplicationController
  before_action :set_troll, only: [:show, :edit, :update, :destroy]

  # GET /trolls
  # GET /trolls.json
  def index
    @trolls = Troll.all
  end

  # GET /trolls/1
  # GET /trolls/1.json
  def show
  end

  # GET /trolls/new
  def new
    @troll = Troll.new
  end

  # GET /trolls/1/edit
  def edit
  end

  # POST /trolls
  # POST /trolls.json
  def create
    @troll = Troll.new(troll_params)

    respond_to do |format|
      if @troll.save
        format.html { redirect_to @troll, notice: 'Troll was successfully created.' }
        format.json { render action: 'show', status: :created, location: @troll }
      else
        format.html { render action: 'new' }
        format.json { render json: @troll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trolls/1
  # PATCH/PUT /trolls/1.json
  def update
    respond_to do |format|
      if @troll.update(troll_params)
        format.html { redirect_to @troll, notice: 'Troll was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @troll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trolls/1
  # DELETE /trolls/1.json
  def destroy
    @troll.destroy
    respond_to do |format|
      format.html { redirect_to trolls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_troll
      @troll = Troll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def troll_params
      params.require(:troll).permit(:name, :bio)
    end
end
