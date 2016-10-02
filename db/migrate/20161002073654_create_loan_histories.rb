class CreateLoanHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :loan_histories do |t|
      t.integer :user_id
      t.integer :book_id
      t.date :loan_date
      t.date :return_date

      t.timestamps
    end
  end
end
