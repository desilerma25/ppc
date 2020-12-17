class PartiesController < ApplicationController
    def index
        @parties = Party.order_by_date # order gets all
    end
end