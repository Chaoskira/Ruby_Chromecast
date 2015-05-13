class FilmVuesController < ApplicationController
  before_action :set_film_vue, only: [:show, :edit, :update, :destroy]

  # GET /film_vues
  # GET /film_vues.json
  def index
    @film_vues = FilmVue.all
  end

  # GET /film_vues/1
  # GET /film_vues/1.json
  def show
  end

  # GET /film_vues/new
  def new
    @film_vue = FilmVue.new
  end

  # GET /film_vues/1/edit
  def edit
  end

  # POST /film_vues
  # POST /film_vues.json
  def create
    @film_vue = FilmVue.new(film_vue_params)

    respond_to do |format|
      if @film_vue.save
        format.html { redirect_to @film_vue, notice: 'Film vue was successfully created.' }
        format.json { render :show, status: :created, location: @film_vue }
      else
        format.html { render :new }
        format.json { render json: @film_vue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /film_vues/1
  # PATCH/PUT /film_vues/1.json
  def update
    respond_to do |format|
      if @film_vue.update(film_vue_params)
        format.html { redirect_to @film_vue, notice: 'Film vue was successfully updated.' }
        format.json { render :show, status: :ok, location: @film_vue }
      else
        format.html { render :edit }
        format.json { render json: @film_vue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /film_vues/1
  # DELETE /film_vues/1.json
  def destroy
    @film_vue.destroy
    respond_to do |format|
      format.html { redirect_to film_vues_url, notice: 'Film vue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film_vue
      @film_vue = FilmVue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def film_vue_params
      params.require(:film_vue).permit(:id_utilisateur, :id_film)
    end
end
