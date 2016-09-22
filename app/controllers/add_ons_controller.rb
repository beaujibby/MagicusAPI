class AddOnsController < ApplicationController
  before_action :find_game
  before_action :set_add_on, only: [:show, :edit, :update, :destroy]

  # GET /add_ons
  # GET /add_ons.json
  def index
    @add_ons = @game.add_ons.all
  end

  # GET /add_ons/1
  # GET /add_ons/1.json
  def show
  end

  # GET /add_ons/new
  def new
    @add_on = @game.add_ons.new
  end

  # GET /add_ons/1/edit
  def edit
  end

  # POST /add_ons
  # POST /add_ons.json
  def create
    @add_on = @game.add_ons.new(add_on_params)

    respond_to do |format|
      if @add_on.save
        format.html { redirect_to @game, notice: 'Add on was successfully created.' }
        format.json { render :show, status: :created, location: @add_on }
      else
        format.html { render :new }
        format.json { render json: @add_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_ons/1
  # PATCH/PUT /add_ons/1.json
  def update
    respond_to do |format|
      if @add_on.update(add_on_params)
        format.html { redirect_to [@game, @add_on], notice: 'Add on was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_on }
      else
        format.html { render :edit }
        format.json { render json: @add_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_ons/1
  # DELETE /add_ons/1.json
  def destroy
    @add_on.destroy
    respond_to do |format|
      format.html { redirect_to add_ons_url, notice: 'Add on was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_on
      @add_on = @game.add_ons.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_on_params
      params.require(:add_on).permit(:game_id, :title, :description, :cost)
    end

    def find_game
      @game = Game.find(params[:game_id])
    end
end
