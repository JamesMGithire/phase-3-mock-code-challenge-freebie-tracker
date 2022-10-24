class Freebie < ActiveRecord::Base
    belongs_to :devs
    belongs_to :companies
    def dev
        Dev.
    end
end
