class ArtitclesController < ApplicationController
  before_action :set_artitcle, only: %i[ show edit update destroy ]

  # GET /artitcles or /artitcles.json
  def index
    @artitcles = Artitcle.all
  end

  # GET /artitcles/1 or /artitcles/1.json
  def show
  end

  # GET /artitcles/new
  def new
    @artitcle = Artitcle.new
  end

  # GET /artitcles/1/edit
  def edit
  end

  # POST /artitcles or /artitcles.json
  def create
    @artitcle = Artitcle.new(artitcle_params)

    respond_to do |format|
      if @artitcle.save
        format.html { redirect_to artitcle_url(@artitcle), notice: "Artitcle was successfully created." }
        format.json { render :show, status: :created, location: @artitcle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artitcle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artitcles/1 or /artitcles/1.json
  def update
    respond_to do |format|
      if @artitcle.update(artitcle_params)
        format.html { redirect_to artitcle_url(@artitcle), notice: "Artitcle was successfully updated." }
        format.json { render :show, status: :ok, location: @artitcle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artitcle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artitcles/1 or /artitcles/1.json
  def destroy
    @artitcle.destroy

    respond_to do |format|
      format.html { redirect_to artitcles_url, notice: "Artitcle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artitcle
      @artitcle = Artitcle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artitcle_params
      params.require(:artitcle).permit(:title, :video)
    end
end
