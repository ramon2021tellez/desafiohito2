class TableDogsController < ApplicationController
  before_action :set_table_dog, only: %i[ show edit update destroy ]

  # GET /table_dogs or /table_dogs.json
  def index
    @table_dogs = TableDog.order(:id_dog).page(params[:page])
  end

  # GET /table_dogs/1 or /table_dogs/1.json
  def show
  end

  # GET /table_dogs/new
  def new
    @table_dog = TableDog.new
  end

  # GET /table_dogs/1/edit
  def edit
  end

  # POST /table_dogs or /table_dogs.json
  def create
    @table_dog = TableDog.new(table_dog_params)

    respond_to do |format|
      if @table_dog.save
        format.html { redirect_to table_dog_url(@table_dog), notice: "Table dog was successfully created." }
        format.json { render :show, status: :created, location: @table_dog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @table_dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_dogs/1 or /table_dogs/1.json
  def update
    respond_to do |format|
      if @table_dog.update(table_dog_params)
        format.html { redirect_to table_dog_url(@table_dog), notice: "Table dog was successfully updated." }
        format.json { render :show, status: :ok, location: @table_dog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @table_dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_dogs/1 or /table_dogs/1.json
  def destroy
    @table_dog.destroy

    respond_to do |format|
      format.html { redirect_to table_dogs_url, notice: "Table dog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_dog
      @table_dog = TableDog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def table_dog_params
      params.require(:table_dog).permit(:id_dog, :nombre, :raza, :peso, :fecha_nac, :vacunas)
    end
end
