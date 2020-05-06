class MoniitorsController < ApplicationController
  before_action :set_moniitor, only: [:show, :edit, :update, :destroy]

  # GET /moniitors
  # GET /moniitors.json
  def index
    @moniitors = Moniitor.all
  end

  # GET /moniitors/1
  # GET /moniitors/1.json
  def show
  end

  # GET /moniitors/new
  def new
    @moniitor = Moniitor.new
  end

  # GET /moniitors/1/edit
  def edit
  end

  # POST /moniitors
  # POST /moniitors.json
  def create
    @moniitor = Moniitor.new(moniitor_params)

    respond_to do |format|
      if @moniitor.save
        format.html { redirect_to @moniitor, notice: 'Moniitor was successfully created.' }
        format.json { render :show, status: :created, location: @moniitor }
      else
        format.html { render :new }
        format.json { render json: @moniitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moniitors/1
  # PATCH/PUT /moniitors/1.json
  def update
    respond_to do |format|
      if @moniitor.update(moniitor_params)
        format.html { redirect_to @moniitor, notice: 'Moniitor was successfully updated.' }
        format.json { render :show, status: :ok, location: @moniitor }
      else
        format.html { render :edit }
        format.json { render json: @moniitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moniitors/1
  # DELETE /moniitors/1.json
  def destroy
    @moniitor.destroy
    respond_to do |format|
      format.html { redirect_to moniitors_url, notice: 'Moniitor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moniitor
      @moniitor = Moniitor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def moniitor_params
      params.require(:moniitor).permit(:title)
    end
end
