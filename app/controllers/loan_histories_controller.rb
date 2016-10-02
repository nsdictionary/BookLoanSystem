class LoanHistoriesController < ApplicationController
  before_action :set_loan_history, only: [:show, :edit, :update, :destroy]

  # GET /loan_histories
  # GET /loan_histories.json
  def index
    @loan_histories = LoanHistory.where(user_id: current_user.id)
  end

  def edit
	  @loan_history = LoanHistory.find(params[:id])
    @loan_history.return_date = Date.today.to_s

    respond_to do |format|
	    if @loan_history.save
	      format.html { redirect_to loan_histories_url, notice: '반납이 정상적으로 완료 되었습니다.' }
	    else
	      format.html { redirect_to loan_histories_url, notice: '에러 발생, 관리자에게 문의하세요.' }
	    end
    end
	end

  # POST /loan_histories
  # POST /loan_histories.json
  def create
	@loan_history = LoanHistory.new(:user_id => params[:user_id], :book_id => params[:book_id], :loan_date => params[:loan_date], :return_date => params[:return_date])

    respond_to do |format|
      if @loan_history.save
        format.html { redirect_to loan_histories_url, notice: '도서 대출이 정상적으로 완료 되었습니다.' }
      else
        format.html { redirect_to loan_histories_url, notice: '에러 발생, 관리자에게 문의하세요.' }
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
end
