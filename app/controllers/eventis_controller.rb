class EventisController < ApplicationController
  before_action :set_eventi, only: [:show, :edit, :update, :destroy]

  # GET /eventis
  # GET /eventis.json
  def index
    @eventis = Eventi.all
  end

  # GET /eventis/1
  # GET /eventis/1.json
  def show
  end

  # GET /eventis/new
  def new
    @eventi = Eventi.new
  end

  # GET /eventis/1/edit
  def edit
  end

  # POST /eventis
  # POST /eventis.json
  def create
    @eventi = Eventi.new(eventi_params)

    respond_to do |format|
      if @eventi.save
        format.html { redirect_to @eventi, notice: 'Eventi was successfully created.' }
        format.json { render action: 'show', status: :created, location: @eventi }
      else
        format.html { render action: 'new' }
        format.json { render json: @eventi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eventis/1
  # PATCH/PUT /eventis/1.json
  def update
    respond_to do |format|
      if @eventi.update(eventi_params)
        format.html { redirect_to @eventi, notice: 'Eventi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @eventi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventis/1
  # DELETE /eventis/1.json
  def destroy
    @eventi.destroy
    respond_to do |format|
      format.html { redirect_to eventis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eventi
      @eventi = Eventi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eventi_params
      params.require(:eventi).permit(:naslov, :opis, :kraj, :zacetek)
    end
end
