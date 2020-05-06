class InstaAccountsController < ApplicationController
  before_action :set_insta_account, only: [:show, :edit, :update, :destroy]

  # GET /insta_accounts
  # GET /insta_accounts.json
  def index
    @insta_accounts = InstaAccount.all
  end

  # GET /insta_accounts/1
  # GET /insta_accounts/1.json
  def show
  end

  # GET /insta_accounts/new
  def new
    @insta_account = InstaAccount.new
  end

  # GET /insta_accounts/1/edit
  def edit
  end

  # POST /insta_accounts
  # POST /insta_accounts.json
  def create
    @insta_account = InstaAccount.new(insta_account_params)

    respond_to do |format|
      if @insta_account.save
        format.html { redirect_to @insta_account, notice: 'Insta account was successfully created.' }
        format.json { render :show, status: :created, location: @insta_account }
      else
        format.html { render :new }
        format.json { render json: @insta_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insta_accounts/1
  # PATCH/PUT /insta_accounts/1.json
  def update
    respond_to do |format|
      if @insta_account.update(insta_account_params)
        format.html { redirect_to @insta_account, notice: 'Insta account was successfully updated.' }
        format.json { render :show, status: :ok, location: @insta_account }
      else
        format.html { render :edit }
        format.json { render json: @insta_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insta_accounts/1
  # DELETE /insta_accounts/1.json
  def destroy
    @insta_account.destroy
    respond_to do |format|
      format.html { redirect_to insta_accounts_url, notice: 'Insta account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insta_account
      @insta_account = InstaAccount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def insta_account_params
      params.require(:insta_account).permit(:name, :moniitor_id)
    end
end
