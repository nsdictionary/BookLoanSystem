json.extract! loan_history, :id, :user_id, :book_id, :loan_date, :return_date, :created_at, :updated_at
json.url loan_history_url(loan_history, format: :json)