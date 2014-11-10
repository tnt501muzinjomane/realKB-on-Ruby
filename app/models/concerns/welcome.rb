class Welcome < ActiveRecord::Base
def self.search(query)
where("solution1 like ?", "%#{query}%")
end
end
