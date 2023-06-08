class UserError < ApplicationRecord
  belongs_to :user
  belongs_to :error
end
