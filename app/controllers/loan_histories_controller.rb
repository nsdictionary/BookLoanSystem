class LoanHistoriesController < ApplicationController
  before_action :set_loan_history, only: [:show, :edit, :update, :destroy]

  # GET /loan_histories
  # GET /loan_histories.json
  def index
    @loan_histories = LoanHistory.all
  end

  # GET /loan_histories/1
  # GET /loan_histories/1.json
  def show
  end

  # GET /loan_histories/new
  def new
    @loan_history = LoanHistory.new
  end

  # GET /loan_histories/1/edit
  def edit
  end

  # POST /loan_histories
  # POST /loan_histories.json
  def create
    @loan_history = LoanHistory.new(loan_history_params)

    respond_to do |format|
      if @loan_history.save
        format.html { redirect_to @loan_history, notice: 'Loan history was successfully created.' }
        format.json { render :show, status: :created, location: @loan_history }
      else
        format.html { render :new }
        format.json { render json: @loan_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loan_histories/1
  # PATCH/PUT /loan_histories/1.json
  def update
    respond_to do |format|
      if @loan_history.update(loan_history_params)
        format.html { redirect_to @loan_history, notice: 'Loan history was successfully updated.' }
        format.json { render :show, status: :ok, location: @loan_history }
      else
        format.html { render :edit }
        format.json { render json: @loan_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loan_histories/1
  # DELETE /loan_histories/1.json
  def destroy
    @loan_history.destroy
    respond_to do |format|
      format.html { redirect_to loan_histories_url, notice: 'Loan history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_history
      @loan_history = LoanHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loan_history_params
      params.require(:loan_history).permit(:user_id, :book_id, :loan_date, :return_date)
    end
end
