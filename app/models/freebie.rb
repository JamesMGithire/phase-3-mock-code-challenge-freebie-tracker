class Freebie < ActiveRecord::Base
    belongs_to :devs
    belongs_to :companies
    def dev
        Dev.find(self.dev_id)
    end

    def company
        Company.find(self.company_id)
    end
    
    def print_details
        puts "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    end
end
