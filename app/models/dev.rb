class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one? item_name
        id = Dev.find_by(name: self.name).id
        Freebies.all.any? { |f| f.item_name == item_name && dev_id == id}
    end
    def give_away(dev, freebie)
        id = Dev.find_by(name: self.name).id
        freebie.dev_id == id && (dev.freebies << freebie)
    end
end