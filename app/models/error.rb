class Error < ApplicationRecord
    has_many :user_errors, dependent: :destroy
end
