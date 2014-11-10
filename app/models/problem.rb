class Problem < ActiveRecord::Base
belongs_to:category
has_many:solutions
validates_presence_of:title, :description, :tag, :category_id
def self.search(query)
  where("title like ? OR description like ? OR tag like ?", "%#{query}%","%#{query}%","%#{query}%") 
end
end
