class User < ApplicationRecord
    has_many :user_errors, dependent: :destroy
    def full_name
        self.first_name + " " + self.last_name
    end
end
