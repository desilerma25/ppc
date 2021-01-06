class Party < ApplicationRecord
    belongs_to :category

    def self.order_by_date
        self.order(date: :desc) # or ("date ASC")
    end

    def is_private
        self.private ? "This party is private." : "This party is public."
    end
end
