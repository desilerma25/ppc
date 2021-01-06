class Party < ApplicationRecord
    belongs_to :category
    accepts_nested_attributes_for :category # cannot find or create, will only create

    # don't need if doing line 3
    def category_attributes=(category_attributes) # arg. will be key value pair to search for/create
        self.category = Category.find_or_create_by(category_attributes)
    end

    def self.order_by_date
        self.order(date: :desc) # or ("date ASC")
    end

    def is_private
        self.private ? "This party is private." : "This party is public."
    end
end
