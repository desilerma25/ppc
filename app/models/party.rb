class Party < ApplicationRecord

    def self.order_by_date
        self.order(date: :desc) # or ("date ASC")
    end
end
