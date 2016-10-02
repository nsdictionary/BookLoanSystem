class Book < ApplicationRecord
  has_many :loan_histories
end
